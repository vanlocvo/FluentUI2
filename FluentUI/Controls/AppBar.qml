import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI.impl

Rectangle {
    id: control
    FluentUI.theme: Theme.of(control)
    property Component action
    property bool showClose: true
    property bool showMinimize: true
    property bool showMaximize: true
    property alias buttonClose: btn_close
    property alias buttonMaximized: btn_maximized
    property alias buttonMinimized: btn_minimized
    property Component windowIcon
    property string windowTitle
	IconButton{
        id: btn_close
    }
	IconButton{
        id: btn_maximized
    }
	IconButton{
        id: btn_minimized
    }
}
