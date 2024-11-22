import QtQuick
import FluentUI.impl

Objects {
    property string appId
    property bool singleton
    property var locale
    signal activeApplicationChanged(string args)
}
