import QtQuick
import QtQuick.Controls
import QtQuick.Window
import FluentUI.impl

AutoLoader{
    property var accentColor
    property var steps
    property int targetMargins
    property int index
    property string finishText
    property string nextText
    property string previousText
    property color backgroundColor
    property var __window : Window.window
    function open(){}
    function next(){}
    function previous(){}
}
