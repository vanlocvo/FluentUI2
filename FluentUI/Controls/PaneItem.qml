import QtQuick
import QtQuick.Controls
import FluentUI.impl

Item {
    id: control
    signal tap
    signal rightTap
    property string title
    property Component infoBadge
    property int count: 0
    property var key
    property alias icon: d.icon
    property bool enabled
    property bool __footer
    property var __parent
    property var __index
    property Action __aciton: Action{
        id:d
    }
}
