import QtQuick
import QtQuick.Window
import QtQuick.Layouts
import QtQuick.Controls
import FluentUI.Controls
import FluentUI.impl

Item{
    property var accentColor
    required property var sourceModel
    required property var columnSourceModel
    property var columnWidthProvider
    property var rowHeightProvider
    property Component delegate: comp_display
    property color rowCheckedColor: Colors.withOpacity(control.accentColor.defaultBrushFor(control.FluentUI.dark),0.1)
    property color rowCurrentColor: control.accentColor.defaultBrushFor(control.FluentUI.dark)
    property bool horizonalHeaderVisible: true
    property bool verticalHeaderVisible: true
    property int horizonalHeaderHeight: 40
    property alias view: list_table
    property alias delegateModel: source_delegate_model
    property alias selectionModel: selected_items
    signal rowClicked(var model)
    signal rowRightClicked(var model)
    property Component cellBackground
    property Component cellForeground
    function closeEditor(){}
}
