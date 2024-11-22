import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI.impl

StandardButton {
    property var accentColor: FluentUI.theme.accentColor
    property string yearText: qsTr("year")
    property string monthText: qsTr("month")
    property string dayText: qsTr("day")
    property var current
    signal accepted()
    property bool showYear: true
    property bool showMonth: true
    property bool showDay: true
    property date startDate: new Date(1924, 0, 1)
    property date endDate: new Date(2124, 0, 1)
}
