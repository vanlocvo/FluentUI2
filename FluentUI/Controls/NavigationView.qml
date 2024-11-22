import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI.impl

Rectangle {
    id: control
    property int displayMode
    property int sideBarWidth
    property int appBarHeight
    property int titleBarTopMargin
    property int sideItemHeight
    property int topBarHeight
    property string title
    property var logo
    property list<QtObject> items
    property list<QtObject> footerItems
    property Component logoDelegate: comp_logo
    property Item autoSuggestBox
    property Component autoSuggestBoxReplacement: comp_search_icon
    property Component leading
    property Component trailing
    property bool sideBarShadow: true
    property PageRouter router
    property alias goBackButton: button_back
    readonly property var sideBarView
    readonly property var sideBarFooterView
    signal tap(var item)
    signal rightTap(var item)
    signal sourceItemsChanged(var sourceItems)
    function go(url,argument={}){}
	IconButton{
		id: button_back
	}
}
