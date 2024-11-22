import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI.impl

Item{
    id:control
    property Component separator
    property var items
    property int spacing
    property int moreSpacing
    property font font
    property int moreSize
    property string textRole
    signal clickItem(var model)
    function remove(index,count){}
    function count(){}
}
