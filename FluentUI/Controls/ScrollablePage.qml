import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

ContentPage {
    default property alias content: container.data
    property alias flickable: content
    property int columnSpacing
    Flickable{
        id: content
        ColumnLayout{
            id:container
        }
    }
}
