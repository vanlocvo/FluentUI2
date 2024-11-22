import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI.impl

TextBox {
    property int placementMode
    property var min
    property var max
    property var value
    property real smallChange
    property real largeChange
    property int precision
    function smallIncrement(){}
    function smallDecrement(){}
    function largeIncrement(){}
    function largeDecrement(){}
}
