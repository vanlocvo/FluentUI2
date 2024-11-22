import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI.impl

StandardButton {
    property var accentColor
    property string hourText
    property string minuteText
    property string pmText
    property string amText
    property int hourFormat
    property int minuteIncrement
    property var current
    signal accepted()
    readonly property bool isH
}
