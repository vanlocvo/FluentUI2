import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window
import FluentUI.impl

Item {
    property bool expanded
    property Component content
    property Component header
    property Component leading
    property Component trailing
    property string title
}
