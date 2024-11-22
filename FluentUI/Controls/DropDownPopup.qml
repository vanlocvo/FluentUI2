import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Templates as T
import FluentUI.impl

T.Popup{
    required property Component content
    property int offsetY
    property bool animationEnabled
    function popup(target){}
}
