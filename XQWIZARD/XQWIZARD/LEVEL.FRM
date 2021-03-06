VERSION 5.00
Object = "{FE0065C0-1B7B-11CF-9D53-00AA003C9CB6}#1.1#0"; "COMCT232.OCX"
Begin VB.Form frmLevelSet 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "级别设置"
   ClientHeight    =   3480
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   2880
   BeginProperty Font 
      Name            =   "宋体"
      Size            =   9
      Charset         =   134
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "LEVEL.frx":0000
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3480
   ScaleWidth      =   2880
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.OptionButton optLevel 
      Caption         =   "新手"
      Height          =   255
      Index           =   2
      Left            =   120
      TabIndex        =   2
      Top             =   840
      Width           =   735
   End
   Begin VB.OptionButton optLevel 
      Caption         =   "菜鸟"
      Height          =   255
      Index           =   1
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   735
   End
   Begin VB.OptionButton optLevel 
      Caption         =   "傻瓜"
      Height          =   255
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   735
   End
   Begin VB.CommandButton btnCancel 
      Cancel          =   -1  'True
      Caption         =   "取消"
      Height          =   375
      Left            =   1560
      TabIndex        =   30
      Top             =   3000
      Width           =   855
   End
   Begin VB.OptionButton optOverwhelming 
      Caption         =   "无敌"
      Height          =   255
      Left            =   1080
      TabIndex        =   28
      Top             =   2640
      Width           =   735
   End
   Begin VB.CommandButton btnConfirm 
      Caption         =   "确定"
      Default         =   -1  'True
      Height          =   375
      Left            =   480
      TabIndex        =   29
      Top             =   3000
      Width           =   855
   End
   Begin VB.Frame frmDepth 
      BorderStyle     =   0  'None
      Height          =   495
      Left            =   1080
      TabIndex        =   23
      Top             =   2160
      Width           =   1695
      Begin VB.TextBox txtDepth 
         Alignment       =   1  'Right Justify
         Height          =   270
         Left            =   720
         TabIndex        =   25
         Top             =   120
         Width           =   495
      End
      Begin ComCtl2.UpDown updnDepth 
         Height          =   270
         Left            =   1200
         TabIndex        =   26
         Top             =   120
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   476
         _Version        =   327681
         Value           =   8
         BuddyControl    =   "txtDepth"
         BuddyDispid     =   196614
         OrigLeft        =   1200
         OrigTop         =   120
         OrigRight       =   1395
         OrigBottom      =   390
         Max             =   99
         Min             =   1
         SyncBuddy       =   -1  'True
         BuddyProperty   =   0
         Enabled         =   -1  'True
      End
      Begin VB.Label lblDepth 
         Caption         =   "深度"
         Height          =   255
         Left            =   240
         TabIndex        =   24
         Top             =   120
         Width           =   375
      End
      Begin VB.Label lblPlies 
         Caption         =   "层"
         Height          =   255
         Left            =   1440
         TabIndex        =   27
         Top             =   120
         Width           =   255
      End
   End
   Begin VB.OptionButton optLevel 
      Caption         =   "特大"
      Height          =   255
      Index           =   7
      Left            =   120
      TabIndex        =   7
      Top             =   2640
      Width           =   735
   End
   Begin VB.OptionButton optLevel 
      Caption         =   "入门"
      Height          =   255
      Index           =   3
      Left            =   120
      TabIndex        =   3
      Top             =   1200
      Width           =   735
   End
   Begin VB.OptionButton optLevel 
      Caption         =   "大师"
      Height          =   255
      Index           =   6
      Left            =   120
      TabIndex        =   6
      Top             =   2280
      Width           =   735
   End
   Begin VB.OptionButton optLevel 
      Caption         =   "专业"
      Height          =   255
      Index           =   5
      Left            =   120
      TabIndex        =   5
      Top             =   1920
      Width           =   735
   End
   Begin VB.OptionButton optLevel 
      Caption         =   "业余"
      Height          =   255
      Index           =   4
      Left            =   120
      TabIndex        =   4
      Top             =   1560
      Width           =   735
   End
   Begin VB.Frame frmTimer 
      BorderStyle     =   0  'None
      Height          =   1215
      Left            =   1080
      TabIndex        =   9
      Top             =   360
      Width           =   1695
      Begin VB.TextBox txtInitTime 
         Alignment       =   1  'Right Justify
         Height          =   270
         Left            =   720
         TabIndex        =   11
         Top             =   120
         Width           =   495
      End
      Begin VB.TextBox txtIncTime 
         Alignment       =   1  'Right Justify
         Height          =   270
         Left            =   720
         TabIndex        =   19
         Top             =   840
         Width           =   495
      End
      Begin VB.TextBox txtIncMove 
         Alignment       =   1  'Right Justify
         Height          =   270
         Left            =   720
         TabIndex        =   15
         Top             =   480
         Width           =   495
      End
      Begin VB.OptionButton optIncTime 
         Caption         =   "加时"
         Height          =   255
         Left            =   0
         TabIndex        =   18
         Top             =   840
         Width           =   735
      End
      Begin VB.OptionButton optIncMove 
         Caption         =   "限着"
         Height          =   255
         Left            =   0
         TabIndex        =   14
         Top             =   480
         Width           =   735
      End
      Begin ComCtl2.UpDown updnSegment 
         Height          =   270
         Left            =   1200
         TabIndex        =   12
         Top             =   120
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   476
         _Version        =   327681
         Value           =   10
         BuddyControl    =   "txtInitTime"
         BuddyDispid     =   196618
         OrigLeft        =   1200
         OrigTop         =   120
         OrigRight       =   1395
         OrigBottom      =   390
         Max             =   480
         Min             =   1
         SyncBuddy       =   -1  'True
         BuddyProperty   =   0
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown updnIncMove 
         Height          =   270
         Left            =   1200
         TabIndex        =   16
         Top             =   480
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   476
         _Version        =   327681
         Value           =   1
         BuddyControl    =   "txtIncMove"
         BuddyDispid     =   196620
         OrigLeft        =   1200
         OrigTop         =   480
         OrigRight       =   1395
         OrigBottom      =   750
         Max             =   999
         Min             =   1
         SyncBuddy       =   -1  'True
         BuddyProperty   =   0
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown updnIncTime 
         Height          =   270
         Left            =   1200
         TabIndex        =   20
         Top             =   840
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   476
         _Version        =   327681
         Value           =   60
         BuddyControl    =   "txtIncTime"
         BuddyDispid     =   196619
         OrigLeft        =   1200
         OrigTop         =   840
         OrigRight       =   1395
         OrigBottom      =   1110
         Max             =   600
         Min             =   -60
         SyncBuddy       =   -1  'True
         BuddyProperty   =   0
         Enabled         =   -1  'True
      End
      Begin VB.Label lblMinutes 
         Caption         =   "分"
         Height          =   255
         Left            =   1440
         TabIndex        =   13
         Top             =   120
         Width           =   255
      End
      Begin VB.Label lblSeconds 
         Caption         =   "秒"
         Height          =   255
         Left            =   1440
         TabIndex        =   21
         Top             =   840
         Width           =   255
      End
      Begin VB.Label lblMoves 
         Caption         =   "着"
         Height          =   255
         Left            =   1440
         TabIndex        =   17
         Top             =   480
         Width           =   255
      End
      Begin VB.Label lblStart 
         Caption         =   "限时"
         Height          =   255
         Left            =   240
         TabIndex        =   10
         Top             =   120
         Width           =   375
      End
   End
   Begin VB.OptionButton optDepth 
      Caption         =   "限定深度"
      Height          =   255
      Left            =   1080
      TabIndex        =   22
      Top             =   1920
      Width           =   1095
   End
   Begin VB.OptionButton optTimer 
      Caption         =   "限定时间"
      Height          =   255
      Left            =   1080
      TabIndex        =   8
      Top             =   120
      Width           =   1095
   End
End
Attribute VB_Name = "frmLevelSet"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' LEVEL.FRM - Source Code for XiangQi Wizard, Part IV
'
' XiangQi Wizard - a Chinese Chess Program (GUI for UCCI Engines)
' Designed by Morning Yellow, Version: 4.82, Last Modified: Oct. 2010
' Copyright (C) 2004-2010 www.xqbase.com
'
' This program is free software; you can redistribute it and/or modify
' it under the terms of the GNU General Public License as published by
' the Free Software Foundation; either version 2 of the License, or
' (at your option) any later version.

' This program is distributed in the hope that it will be useful,
' but WITHOUT ANY WARRANTY; without even the implied warranty of
' MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
' GNU General Public License for more details.

' You should have received a copy of the GNU General Public License along
' with this program; if not, write to the Free Software Foundation, Inc.,
' 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

Option Explicit

Private Level_bLoaded   As Boolean  ' 按钮触发事件
Private Level_nDepth    As Integer  ' 引擎搜索深度
Private Level_nInitTime As Integer  ' 起始时间
Private Level_nIncMove  As Integer  ' 时段制的每时段步数
Private Level_nIncTime  As Integer  ' 加时制的加时秒数

' 以下是级别设置例程

Private Sub IncModeSetting(ByVal bIncMode As Boolean)

txtIncTime.Enabled = bIncMode
updnIncTime.Enabled = bIncMode
lblSeconds.Enabled = bIncMode
txtIncMove.Enabled = Not bIncMode
updnIncMove.Enabled = Not bIncMode
lblMoves.Enabled = Not bIncMode

End Sub

Private Sub LevelSetting(ByVal nInitTime As Integer, Optional ByVal bIncMode As Boolean = True, Optional ByVal nIncMove As Integer = 0, Optional ByVal nIncTime As Integer = 0)

End Sub

' 以上是级别设置例程

Private Sub Form_Load()

Dim i As Integer

Level_nInitTime = Timer_nInitTime
txtInitTime.Text = Timer_nInitTime
If Timer_bIncMode Then
    optIncTime.Value = True
Else
    optIncMove.Value = True
End If
IncModeSetting Timer_bIncMode
Level_nIncTime = Timer_nIncTime
txtIncTime.Text = Timer_nIncTime
Level_nIncMove = Timer_nIncMove
txtIncMove.Text = Timer_nIncMove

Level_bLoaded = False
If Timer_nDepth < 0 Then
    optLevel(LEVEL_PEABRAIN - Timer_nDepth).Value = True
    frmTimer.Visible = False
    frmDepth.Visible = False
ElseIf Timer_nDepth = 0 Then
    optTimer.Value = True
    frmTimer.Visible = True
    frmDepth.Visible = False
ElseIf Timer_nDepth = LEVEL_INFINITE Then
    optOverwhelming.Value = True
    frmTimer.Visible = False
    frmDepth.Visible = False
Else
    optDepth.Value = True
    frmTimer.Visible = False
    frmDepth.Visible = True
    Level_nDepth = Timer_nDepth
    txtDepth.Text = Level_nDepth
End If
Level_bLoaded = True

LevelSetting Timer_nInitTime, Timer_bIncMode, Timer_nIncMove, Timer_nIncTime

SetTopMost hWnd

If Options_nLanguage = LANGUAGE_ZH_CN Then
    Exit Sub
End If
Font.Charset = 136
Font.Name = "細明體"
On Error Resume Next
For i = 0 To Controls.Count - 1
    Controls(i).Font = Font
Next
On Error GoTo 0
Caption = "引擎設置"
optLevel(0).Caption = "傻瓜"
optLevel(1).Caption = "菜鳥"
optLevel(2).Caption = "新手"
optLevel(3).Caption = "入門"
optLevel(4).Caption = "業餘"
optLevel(5).Caption = "專業"
optLevel(6).Caption = "大師"
optLevel(7).Caption = "特大"
optTimer.Caption = "限定時間"
lblStart.Caption = "限時"
lblMinutes.Caption = "分"
optIncMove.Caption = "限著"
lblMoves.Caption = "著"
optIncTime.Caption = "加時"
lblSeconds.Caption = "秒"
optDepth.Caption = "限定深度"
lblDepth.Caption = "層"
optOverwhelming.Caption = "無敵"
btnConfirm.Caption = "確定"
btnCancel.Caption = "取消"

End Sub

Private Sub Form_Unload(nCancel As Integer)

If Not (Timer_nDepth = 0 And (Engine_bRed Or Engine_bBlack)) Then
    App_frmMain.tlb.Buttons("EngineLevel").Value = tbrUnpressed
End If

End Sub

Private Sub optLevel_Click(nIndex As Integer)

If Not Level_bLoaded Then
    Exit Sub
End If
frmTimer.Visible = False
frmDepth.Visible = False
Level_nDepth = LEVEL_PEABRAIN - nIndex
If Level_nDepth = LEVEL_GRANDMASTER Then
    MsgBox L("“特级大师”级别电脑思考时间可能会很长，建议缺乏耐心的象棋爱好者不要选择这个级别。", _
            "“特級大師”級別電腦思考時間可能會很長，建議缺乏耐心的象棋愛好者不要選擇這個級別。") & vbCrLf & vbCrLf & _
            L("您可以按“停止思考/立即走棋”按钮中止电脑的运算。", "您可以按“停止思考/立即走棋”按鈕中止電腦的運算。"), vbInformation
End If

End Sub

Private Sub optOverwhelming_Click()

If Not Level_bLoaded Then
    Exit Sub
End If
frmTimer.Visible = False
frmDepth.Visible = False
Level_nDepth = LEVEL_INFINITE
MsgBox L("“无敌”模式不适合一般的人机对弈，仅供解杀局、残局用，电脑将一直运算下去直到算出胜负为止。", _
        "“無敵”模式不適合一般的人機對弈，僅供解殺局、殘局用，電腦將一直運算下去直到算出勝負為止。") & vbCrLf & vbCrLf & _
        L("您可以按“停止思考/立即走棋”按钮中止电脑的运算。", "您可以按“停止思考/立即走棋”按鈕中止電腦的運算。"), vbInformation

End Sub

Private Sub optTimer_Click()

If Not Level_bLoaded Then
    Exit Sub
End If
frmTimer.Visible = True
frmDepth.Visible = False
Level_nDepth = 0

End Sub

Private Sub optDepth_Click()

If Not Level_bLoaded Then
    Exit Sub
End If
frmTimer.Visible = False
frmDepth.Visible = True
If Level_nDepth < LEVEL_DEPTH_MIN Or Level_nDepth > LEVEL_DEPTH_MAX Then
    Level_nDepth = 8
    txtDepth.Text = 8
End If

End Sub

Private Sub optIncMove_Click()

IncModeSetting False

End Sub

Private Sub optIncTime_Click()

IncModeSetting True

End Sub

Private Sub txtInitTime_Change()

If Level_nInitTime <> Str2Int(txtInitTime.Text) Then
    Level_nInitTime = Str2Int(txtInitTime.Text, 1, 480)
    txtInitTime.Text = Level_nInitTime
End If

End Sub

Private Sub txtIncMove_Change()

If Level_nIncMove <> Str2Int(txtIncMove.Text) Then
    Level_nIncMove = Str2Int(txtIncMove.Text, 1, 999)
    txtIncMove.Text = Level_nIncMove
End If

End Sub

Private Sub txtIncTime_Change()

If Level_nIncTime <> Str2Int(txtIncTime.Text) Then
    Level_nIncTime = Str2Int(txtIncTime.Text, -60, 600)
    txtIncTime.Text = Level_nIncTime
End If

End Sub

Private Sub txtDepth_Change()

If Level_nDepth <> Str2Int(txtDepth.Text) Then
    Level_nDepth = Str2Int(txtDepth.Text, LEVEL_DEPTH_MIN, LEVEL_DEPTH_MAX)
    txtDepth.Text = Level_nDepth
End If

End Sub

Private Sub btnConfirm_Click()

Timer_bIncMode = optIncTime.Value
Timer_nInitTime = Level_nInitTime
Timer_nIncMove = Level_nIncMove
Timer_nIncTime = Level_nIncTime
Timer_nDepth = Level_nDepth
StartTimer
Unload Me

End Sub

Private Sub btnCancel_Click()

App_frmMain.mnEngineLevel.Checked = False
App_frmMain.tlb.Buttons("EngineLevel").Value = tbrUnpressed
Unload Me

End Sub
