import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI.impl

StandardButton {
    property var accentColor
    property color current
    property string cancelText
    property string okText
    property string titleText
    property string editText
    property string redText
    property string greenText
    property string blueText
    property string opacityText
    property int colorHandleRadius: 8
    signal accepted()
}
