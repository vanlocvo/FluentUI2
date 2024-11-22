import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI.impl

Item {
    property var accentColor
    property int severity
    property string title
    property bool closable
    property string message
    property Component titleItem
    property Component messageItem
    property Component action
    property bool iconVisible
    property var onClickCloseListener
    property int messageMaximumWidth
    property int topPadding
    property int leftPadding
    property int rightPadding
    property int bottomPadding
}
