import QtQuick
import QtQuick.Controls
import FluentUI.impl

StandardButton {
    default property alias contentData: menu.contentData
    property alias menu: menu
	Menu {
        id: menu
    }
}
