import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import FluentUI.Controls
import FluentUI.impl
import Gallery
import Qt.labs.platform as P

FramelessWindow {
    id: window
    property alias infoBarManager: infobar_manager
    property alias tourSteps: tour.steps
    width: 1424
    height: 744
    minimumWidth: 484
    minimumHeight: 484
    visible: true
    fitsAppBarWindows: true
    launchMode: WindowType.SingleInstance
    windowEffect: Global.windowEffect
    autoDestroy: false
    appBar: AppBar{
        implicitHeight: 48
        windowIcon: Item{}
        action: RowLayout{
            IconButton{
                id: btn_dark
                implicitWidth: 46
                padding: 0
                radius: 0
                icon.width: 14
                icon.height: 14
                icon.name: Theme.dark ? FluentIcons.graph_Brightness : FluentIcons.graph_QuietHours
                ToolTip.visible: hovered
                ToolTip.text: Theme.dark ? qsTr("Light") : qsTr("Dark")
                ToolTip.delay: Theme.toolbarDelay
                onClicked: handleDarkChanged(this)
            }
            IconButton{
                id: btn_stick_on_top
                implicitWidth: 46
                padding: 0
                radius: 0
                icon.width: 14
                icon.height: 14
                icon.name: FluentIcons.graph_Pinned
                icon.color: window.topmost ? Theme.accentColor.defaultBrushFor() : this.FluentUI.textColor
                ToolTip.visible: hovered
                ToolTip.text: window.topmost ? qsTr("Sticky on Top cancelled") : qsTr("Sticky on Top")
                ToolTip.delay: Theme.toolbarDelay
                onClicked: {
                    window.topmost = !window.topmost
                }
            }
            Component.onCompleted: {
                window.tourSteps.push({title:qsTr("Dark Mode"),description: qsTr("Here you can switch to night mode."),target:()=>btn_dark})
                window.tourSteps.push({title:qsTr("Sticky on Top"),description: qsTr("From here, you can switch to the top of the window."),target:()=>btn_stick_on_top})
            }
        }
    }
    initialItem: R.resolvedUrl("res/qml/screen/MainScreen.qml")
    Component.onCompleted: {
        tour.open()
    }
    onNewInit:
        (argument)=>{
            if(argument.type===0){
                dialog_program_already.argsText = argument.args
                dialog_program_already.open()
            }
        }
    onCloseListener: function(event){
        dialog_close.open()
        event.accepted = false
    }
    P.SystemTrayIcon {
        id: system_tray
        visible: true
        icon.source: "qrc:/qt/qml/Gallery/res/image/logo.png"
        tooltip: "FluentUI-Gallery"
        menu: P.Menu {
            P.MenuItem {
                text: qsTr("Exit")
                onTriggered: {
                    WindowRouter.exit(0)
                }
            }
        }
        onActivated:
            (reason)=>{
                if(reason === P.SystemTrayIcon.Trigger){
                    window.show()
                    window.raise()
                    window.requestActivate()
                }
            }
    }
    Tour{
        id: tour
    }
    Component{
        id: comp_reveal
        CircularReveal{
            id: reveal
            target: window.contentItem
            anchors.fill: parent
            onAnimationFinished:{
                loader_reveal.sourceComponent = undefined
            }
            onImageChanged: {
                changeDark()
            }
        }
    }
    InfoBarManager{
        id: infobar_manager
        target: window.contentItem
        messageMaximumWidth: 380
    }
    AutoLoader{
        id:loader_reveal
        anchors.fill: parent
        z: 65535
    }
    function distance(x1,y1,x2,y2){
        return Math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))
    }
    function handleDarkChanged(button){
        if(loader_reveal.sourceComponent){
            return
        }
        loader_reveal.sourceComponent = comp_reveal
        var target = window.contentItem
        var pos = button.mapToItem(target,0,0)
        var centerX = pos.x + button.width/2
        var centerY = pos.y + button.height/2
        var radius = Math.max(distance(centerX,centerY,0,0),distance(centerX,centerY,target.width,0),distance(centerX,centerY,0,target.height),distance(centerX,centerY,target.width,target.height))
        var reveal = loader_reveal.item
        reveal.start(reveal.width*Screen.devicePixelRatio,reveal.height*Screen.devicePixelRatio,Qt.point(centerX,centerY),radius,Theme.dark)
    }
    function changeDark(){
        if(Theme.dark){
            Theme.darkMode = FluentUI.Light
        }else{
            Theme.darkMode = FluentUI.Dark
        }
    }
    Dialog {
        id: dialog_close
        x: Math.ceil((parent.width - width) / 2)
        y: Math.ceil((parent.height - height) / 2)
        parent: Overlay.overlay
        modal: true
        title: qsTr("Quit")
        Column {
            spacing: 20
            anchors.fill: parent
            Label {
                width: 300
                wrapMode: Text.WrapAnywhere
                text: qsTr("Are you sure you want to exit the program?")
            }
        }
        footer: DialogButtonBox{
            Button{
                text: qsTr("Cancel")
                onClicked: {
                    dialog_close.close()
                }
            }
            Button{
                text: qsTr("Minimize")
                onClicked: {
                    system_tray.showMessage(qsTr("Friendly Reminder"),qsTr("FluentUI-Gallery is hidden from the tray, click on the tray to activate the window again"));
                    window.hide()
                    dialog_close.close()
                }
            }
            Button{
                text: qsTr("Ok")
                highlighted: true
                onClicked: {
                    WindowRouter.exit(0)
                }
            }
        }
    }
    Dialog {
        id: dialog_program_already
        property string argsText: ""
        x: Math.ceil((parent.width - width) / 2)
        y: Math.ceil((parent.height - height) / 2)
        parent: Overlay.overlay
        modal: true
        title: qsTr("Friendly reminder")
        standardButtons: Dialog.Yes
        Column {
            spacing: 20
            anchors.fill: parent
            Label {
                width: 300
                wrapMode: Text.WrapAnywhere
                text: qsTr("The program is already running. The parameter is ->")+dialog_program_already.argsText
            }
        }
    }
}
