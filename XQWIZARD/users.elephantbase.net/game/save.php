<?php
  require_once "../mysql_conf.php";
  require_once "../common.php";

  $header = getallheaders();
  $username = $header["Login-UserName"];
  $password = $header["Login-Password"];
  $score = intval($_POST["score"]);

  mysql_connect($mysql_host, $mysql_username, $mysql_password);
  mysql_select_db($mysql_database);
  $result = login($username, $password);
  if ($result == "error") {
    header("Login-Result: error");
  } else if ($result == "noretry") {
    header("Login-Result: noretry");
  } else if ($score > $result["score"]) {
    $sql = sprintf("UPDATE {$mysql_tablepre}user SET score = %d WHERE username = '%s'",
        $score, mysql_real_escape_string($username));
    mysql_query($sql);
    insertLog($username, EVENT_SAVE, $score);
    header("Login-Result: ok");
    // 更新最近提交列表
    $sql = sprintf("REPLACE INTO {$mysql_tablepre}recent (username, savetime, score) " .
        "VALUES ('%s', %d, %d)", mysql_real_escape_string($username), time(), $score);
    mysql_query($sql);
    $result = mysql_query("SELECT COUNT(*) FROM {$mysql_tablepre}recent");
    $line = mysql_fetch_assoc($result);
    $count = $line["COUNT(*)"];
    if ($count > 100) {
      $sql = sprintf("DELETE FROM {$mysql_tablepre}recent ORDER BY savetime " .
          "LIMIT %d", $count - 100);
      mysql_query($sql);
    }
    // 检查是否该运行每日任务
    checkDailyTask();
  } else {
    header("Login-Result: nosave");
  }
  mysql_close();
?>