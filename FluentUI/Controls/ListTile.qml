import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Templates as T
import FluentUI.impl

T.ItemDelegate {
    property Component leading
    property Component trailing
    property Component content
    property int radius
    property color textColor
}
