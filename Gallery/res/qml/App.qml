import QtQuick
import QtQuick.Controls
import FluentUI.Controls
import FluentUI.impl
import FluentUI
import Gallery

Starter {
    id: starter
    //The value of AppId uniquely identifies this application. Do not use the same AppId value in other applications
    appId: "A053D1AE-AEA9-4105-B79C-B5F5BEDC9208"
    singleton: true
    onActiveApplicationChanged:
        (args)=> {
            WindowRouter.go("/",{type:0,args:args})
        }
    Connections{
        target: Theme
        function onDarkModeChanged(){
            SettingsHelper.saveDarkMode(Theme.darkMode)
        }
    }
    Component.onCompleted: {
        R.windowIcon = R.resolvedUrl("res/image/logo.png")
        Global.starter = starter
        Theme.darkMode = SettingsHelper.getDarkMode()
        WindowRouter.routes = {
            "/": R.resolvedUrl("res/qml/window/MainWindow.qml"),
            "/login": R.resolvedUrl("res/qml/window/LoginWindow.qml"),
            "/standardwindow": R.resolvedUrl("res/qml/window/StandardWindow.qml"),
            "/singletaskwindow": R.resolvedUrl("res/qml/window/SingleTaskWindow.qml"),
            "/singleinstancewindow": R.resolvedUrl("res/qml/window/SingleInstanceWindow.qml"),
            "/page": R.resolvedUrl("res/qml/window/PageWindow.qml"),
            "/testDesign": R.resolvedUrl("res/qml/window/TestDesignWindow.qml")
        }
        WindowRouter.go("/")
    }
}
