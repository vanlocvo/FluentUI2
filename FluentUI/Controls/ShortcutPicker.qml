import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI.impl

StandardButton {
    property var current
    property string title
    property string message
    property string saveText
    property string cancelText
    property string resetText
    signal accepted()
}
