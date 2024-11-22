import QtQuick
import FluentUI.impl

Objects {
    id: control
    required property var normal
    function darkest(val){}
    function darker(val){}
    function dark(val){}
    function light(val){}
    function lighter(val){}
    function lightest(val){}
    function defaultBrushFor(isDark=null){}
    function secondaryBrushFor(isDark){}
    function tertiaryBrushFor(isDark){}
}
