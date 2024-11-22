import QtQuick
import FluentUI.impl

Item{
    default property alias content: container.data
    property var radius
    Item{
        id: container
    }
}
