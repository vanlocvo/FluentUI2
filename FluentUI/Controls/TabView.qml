import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI.impl

Item {
    property int tabWidthBehavior
    property int closeButtonVisibility
    property int itemWidth
    property bool addButtonVisibility
    signal newPressed
    function createTab(icon,text,page,argument={}){}
    function appendTab(icon,text,page,argument){}
    function setTabList(list){}
    function count(){}
}
