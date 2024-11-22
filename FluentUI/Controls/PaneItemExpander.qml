import QtQuick
import QtQuick.Controls
import FluentUI.impl

Item {
    id: control
    signal tap
    signal rightTap
    property string title
    property alias icon: d.icon
    property var key
    property bool enabled
    property bool __expanded
    property var __parent
    property var __index
    property Action __aciton: Action{
        id:d
    }
    property int count
}
