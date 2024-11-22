pragma Singleton

import QtQuick
import QtQuick.Controls
import FluentUI.impl

Objects {
    property int darkMode
    readonly property bool dark
    property int textRender
    property int toolbarDelay
    property int fasterAnimationDuration
    property int fastAnimationDuration
    property int mediumAnimationDuration
    property int slowAnimationDuration
    property int animationCurve
    property var primaryColor
    property var accentColor
    property ColorResource res
    property ColorResource darkResource
    property ColorResource lightResource
    function buttonColor(button,transparentWhenNone = false,isDark = null){}
    function uncheckedInputColor(button,transparentWhenNone = false,transparentWhenDisabled = false,isDark = null){}
    function checkedInputColor(button,accentColor,isDark = null){}
    function of(control){}
    function ofAccentColor(color){}
    function ofDark(isDark){}
}
