/*
StartUp.java - Source Code for XiangQi Wizard Light, Part III

XiangQi Wizard Light - a Chinese Chess Program for Java ME
Designed by Morning Yellow, Version: 1.0, Last Modified: Aug. 2007
Copyright (C) 2004-2007 www.elephantbase.net

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
*/
package xqwlight;

import javax.microedition.lcdui.Alert;
import javax.microedition.lcdui.AlertType;
import javax.microedition.lcdui.Choice;
import javax.microedition.lcdui.ChoiceGroup;
import javax.microedition.lcdui.Command;
import javax.microedition.lcdui.CommandListener;
import javax.microedition.lcdui.Display;
import javax.microedition.lcdui.Displayable;
import javax.microedition.lcdui.Form;
import javax.microedition.lcdui.Image;

public class StartUp extends Form implements CommandListener {
	private XQWLight midlet;

	private ChoiceGroup cgToMove;
	private ChoiceGroup cgHandicap;
	private ChoiceGroup cgLevel;

	private Command cmdAbout;
	private Command cmdStart;
	// private Command cmdExit;

	private Alert altAbout;

	public StartUp(XQWLight midlet) {
		super("��ʼ - ����С��ʦ");
		this.midlet = midlet;

		append("˭���ߣ�");
		cgToMove = new ChoiceGroup(null, Choice.EXCLUSIVE);
		cgToMove.append("������", null);
		cgToMove.append("��������", null);
		append(cgToMove);

		append("�������ӣ�");
		cgHandicap = new ChoiceGroup(null, Choice.POPUP);
		cgHandicap.append("������", null);
		cgHandicap.append("�õ���", null);
		cgHandicap.append("��˫��", null);
		cgHandicap.append("�þ���", null);
		append(cgHandicap);

		append("����ˮƽ��");
		cgLevel = new ChoiceGroup(null, Choice.POPUP);
		cgLevel.append("����", null);
		cgLevel.append("ҵ��", null);
		cgLevel.append("רҵ", null);
		append(cgLevel);

		cmdAbout = new Command("����\"����С��ʦ\"", Command.BACK, 1);
		cmdStart = new Command("��ʼ", Command.OK, 2);
		// cmdExit = new Command("�˳�", Command.CANCEL, 3);

		addCommand(cmdAbout);
		addCommand(cmdStart);
		// addCommand(cmdExit);

		reset();

		Image image = null;
		try {
			image = Image.createImage("/images/xqwlarge.gif");
		} catch (Exception e) {
			// Ignored
		}
		altAbout = new Alert("����\"����С��ʦ\"", "����С��ʦ 1.0\n����ٿ�ȫ�� ������Ʒ\n\n" +
                "��ӭ��¼ www.elephantbase.net\n�������PC�� ������ʦ", image, AlertType.INFO);
		altAbout.setTimeout(Alert.FOREVER);

		setCommandListener(this);
    }

    public void commandAction(Command c, Displayable d) {
    	if (false) {
    		// Code Style
    	} else if (c == cmdAbout) {
    		Display.getDisplay(midlet).setCurrent(altAbout);
    	} else if (c == cmdStart) {
        	midlet.setFlipped(cgToMove.isSelected(1));
        	midlet.setHandicap(cgHandicap.getSelectedIndex());
        	midlet.setLevel(cgLevel.getSelectedIndex());
            Display.getDisplay(midlet).setCurrent(midlet.getMainForm());
    	// } else if (c == cmdExit) {
    		// midlet.notifyDestroyed();
    	}
    }

    public void reset() {
		cgLevel.setSelectedIndex(0, true);
		cgToMove.setSelectedIndex(0, true);
		cgHandicap.setSelectedIndex(0, true);
	}
}