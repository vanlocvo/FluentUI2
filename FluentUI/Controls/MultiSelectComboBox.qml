import QtQuick
import QtQuick.Window
import QtQuick.Controls
import FluentUI.Controls
import QtQuick.Controls.impl
import QtQuick.Templates as T
import FluentUI.impl

T.ComboBox {
    property var accentColor:
    property string placeholderText
    property bool highlighted
    property alias selectedItems: selected_items
    property alias visualModel: visual_model
    DelegateModel {
        id: visual_model
        model: control.model
        groups: [
            DelegateModelGroup {
                id: selected_items
                name: "selected"
            }
        ]
        delegate: control.delegate
    }
}
