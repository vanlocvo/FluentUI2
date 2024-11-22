import QtQuick
import QtQuick.Controls
import FluentUI.impl

Window {
    id: control
    property var initialItem
	property alias containerItem: layout_container
    property alias framelessHelper: frameless
    property int launchMode
    property bool fitsAppBarWindows
    property bool topmost
    property bool fixSize
    property AppBar appBar
    property int __margins
    property var __windowRegister
    property string __route
    property Component background
    property bool autoDestroy
    property int windowEffect
    signal init(var argument)
    signal newInit(var argument)
    property var onCloseListener
    function setHitTestVisible(id){}
    function showMaximized(){}
    function showMinimized(){}
    function showNormal(){}
    function showFullScreen(){}
    function deleteLater(){}
    function setResult(data){}
	Item{
        id: layout_container
	}
	Frameless{
		id: frameless
	}
}
