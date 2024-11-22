import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import FluentUI.impl

Item {
    property int spacing
    property bool mirrored
    property int alignment
    property int display
    property string text
    property alias icon : d.icon
    property font font
    property string family
    property color color
    property real topPadding
    property real leftPadding
    property real rightPadding
    property real bottomPadding
	Action{
        id: d
    }
}
