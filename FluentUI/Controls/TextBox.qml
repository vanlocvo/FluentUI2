import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.impl
import QtQuick.Templates as T
import FluentUI.impl

T.TextField {
    property var accentColor
    property bool pressed
    property Component leading
    property Component trailing
}
