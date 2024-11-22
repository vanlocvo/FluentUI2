pragma Singleton

import QtQuick
import FluentUI.impl

QtObject {
    readonly property color transparent
    readonly property color black
    readonly property color white
    readonly property color grey
    readonly property color grey10
    readonly property color grey20
    readonly property color grey30
    readonly property color grey40
    readonly property color grey50
    readonly property color grey60
    readonly property color grey70
    readonly property color grey80
    readonly property color grey90
    readonly property color grey100
    readonly property color grey110
    readonly property color grey120
    readonly property color grey130
    readonly property color grey140
    readonly property color grey150
    readonly property color grey160
    readonly property color grey170
    readonly property color grey180
    readonly property color grey190
    readonly property color grey200
    readonly property color grey210
    readonly property color grey220
    readonly property color warningPrimaryColor
    readonly property AccentColor warningSecondaryColor
    readonly property color errorPrimaryColor
    readonly property AccentColor errorSecondaryColor
    readonly property color successPrimaryColor
    readonly property AccentColor successSecondaryColor
    readonly property AccentColor yellow
    readonly property AccentColor orange
    readonly property AccentColor red
    readonly property AccentColor magenta
    readonly property AccentColor purple
    readonly property AccentColor blue
    readonly property AccentColor teal
    readonly property AccentColor green
    property var accentColors
    function calculateLuminance(color) {}
    function basedOnLuminance(color,darkColor=Colors.black,lightColor=Colors.white) {}
    function withOpacity(color, opacity) {}
}
