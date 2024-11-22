import QtQuick
import QtQuick.Controls
import FluentUI.impl

Objects {
    property int edge
    property var target
    property int offsetX
    property int offsetY
    property int messageMaximumWidth: 520
    function showSuccess(title,duration=1500,message,action){}
    function showInfo(title,duration=1500,message,action){}
    function showWarning(title,duration=1500,message,action){}
    function showError(title,duration=1500,message,action){}
    function show(type,title,duration=1500,message,action){}
    function showCustom(customcomponent,duration=1500){}
    function clearAllInfo(){}
}
