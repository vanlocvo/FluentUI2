import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window
import FluentUI.impl

StandardButton {
    property var accentColor
    property date from
    property date to
    property var current
    signal accepted()
}
