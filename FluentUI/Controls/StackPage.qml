import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import FluentUI.impl

ContentPage {
    property PageRouter router
    property alias popEnter: stack_view.popEnter
    property alias popExit: stack_view.popExit
    property alias pushEnter: stack_view.pushEnter
    property alias pushExit: stack_view.pushExit
    property alias replaceEnter: stack_view.replaceEnter
    property alias replaceExit: stack_view.replaceExit
    function popToIndex(index){}
    PageRouterView{
        id: stack_view
    }
}
