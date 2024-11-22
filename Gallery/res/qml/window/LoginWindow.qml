import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import FluentUI.Controls
import FluentUI.impl
import Gallery

FramelessWindow {
    property var argument
    id: window
    title: "Login"
    width: 600
    height: 400
    fixSize: true
    visible: true
    launchMode: WindowType.SingleInstance
    windowEffect: Global.windowEffect
    initialItem: R.resolvedUrl("res/qml/screen/LoginScreen.qml")
}
