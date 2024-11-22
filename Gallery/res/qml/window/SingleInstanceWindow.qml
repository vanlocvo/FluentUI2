import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import FluentUI.Controls
import FluentUI.impl
import Gallery

FramelessWindow {
    property var argument
    id: window
    title: "SingleInstanceWindow"
    width: 600
    height: 400
    fixSize: true
    visible: true
    launchMode: WindowType.SingleInstance
    windowEffect: Global.windowEffect
    fitsAppBarWindows: true
    onInit:
        (arg)=>{
            argument = arg
        }

    onNewInit:
        (arg)=>{
            argument = arg
        }

    initialItem: R.resolvedUrl("res/qml/screen/MultiWindowScreen.qml")

}
