import QtQuick
import QtQuick.Controls
import FluentUI.impl

TextBox{
    id: control
    property var items
    property string noResultsMessage
    property string textRole
    property int maximumCount
    property var filter
    signal tap(var data)
    function close(){}
    function updateText(text){}
}
