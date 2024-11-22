import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import FluentUI.Controls
import FluentUI.impl
import Gallery

Item{
    Connections{
        target: window
        function onInit(arg){
            viewModel.username = arg.username
            textbox_password.forceActiveFocus()
        }
    }
    LoginViewModel{
        id: viewModel
    }
    ColumnLayout {
        spacing: 20
        anchors.centerIn: parent
        width: 260
        Label {
            elide: Label.ElideRight
            text: qsTr("Please enter the credentials:")
            Layout.fillWidth: true
        }
        TextField {
            id: textbox_username
            focus: true
            placeholderText: qsTr("Username")
            Layout.fillWidth: true
            text: viewModel.username
            Binding { viewModel.username: textbox_username.text }
        }
        TextField {
            id: textbox_password
            placeholderText: qsTr("Password")
            echoMode: TextField.Password
            Layout.fillWidth: true
            text: viewModel.password
            Binding { viewModel.password: textbox_password.text }
        }
        Item{
            implicitHeight: 40
            Layout.fillWidth: true
            Button{
                text: qsTr("Cancel")
                anchors{
                    left: parent.left
                    verticalCenter: parent.verticalCenter
                }
                onClicked: {
                    window.close()
                }
            }
            FilledButton{
                text: qsTr("Login")
                anchors{
                    right: parent.right
                    verticalCenter: parent.verticalCenter
                }
                onClicked: {
                    viewModel.login()
                    window.setResult({password:viewModel.password})
                    window.close()
                }
            }
        }
    }
}
