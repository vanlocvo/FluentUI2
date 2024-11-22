pragma Singleton

import QtQuick
import FluentUI.impl

QtObject {
    property var routes : ({})
    property var windows: []
    function addWindow(window){}
    function removeWindow(win) {}
    function exit(retCode){}
    function go(route,argument={},windowRegister = undefined){}
}
