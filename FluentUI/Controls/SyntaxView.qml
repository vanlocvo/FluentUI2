import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI.impl

Item {
    property var accentColor
    property alias textArea: text_area
    property alias text : text_area.text
    property bool showLineNumbers
    property int currentLineNumber
    property int rowHeight
    property Component highlighter
    property font font
    Flickable {
        TextArea.flickable: MultiLineTextBox {
            id: text_area
        }
    }
}
