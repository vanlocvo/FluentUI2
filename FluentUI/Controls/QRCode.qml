import QtQuick
import QtQuick.Controls
import FluentUI.impl

Item{
    id: control
    property alias text: qrcode.text
    property alias color: qrcode.color
    property alias backgroundColor: qrcode.backgroundColor
    property int size: 50
    property int margins: 0
    QRCodeImpl{
        id: qrcode
    }
}
