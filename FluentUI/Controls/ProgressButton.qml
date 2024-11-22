import QtQuick
import FluentUI.impl

FilledButton {
    property bool indeterminate
    property real value
    readonly property bool completed
    readonly property bool started
    readonly property bool ready
}
