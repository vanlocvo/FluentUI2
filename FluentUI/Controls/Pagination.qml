import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI.impl

Item {
    property var accentColor
    signal requestPage(int page, int count)
    property string previousText
    property string nextText
    property int pageCurrent
    property int itemCount
    property int pageButtonCount
    property int pageCount
    property int __itemPerPage
    property int __pageButtonHalf
    property Component header
    property Component footer
    function calcNewPage(page) {}
}
