import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI.impl

Item {
    default property alias content: swipe_view.contentData
    readonly property bool vertical
    property Component decrementItem
    property Component incrementItem
    property alias orientation: swipe_view.orientation
    property alias count: swipe_view.count
    property alias currentIndex: swipe_view.currentIndex
    function decrementCurrentIndex() {}
    function incrementCurrentIndex() {}
}
