import QtQuick

Item {
    property var __fro
    property var __to
    property var path
    signal result(var data)
    function launch(argument = {}){}
    function setResult(data = {}){}
}
