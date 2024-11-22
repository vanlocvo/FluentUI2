import QtQuick

Item {
    property int itemWidth
    property alias model: rep.model
    property alias delegate: rep.delegate
    property int rowSpacing
    property int colSpacing
    Repeater {
        id: rep
    }
    function clear(){}
}