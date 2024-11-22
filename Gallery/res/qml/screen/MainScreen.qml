import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import FluentUI.Controls
import FluentUI.impl
import Gallery

Item{
    property list<QtObject> originalItems: [
        PaneItem{
            id: item
            key: "/"
            title: qsTr("Home")
            icon.name: FluentIcons.graph_Home
        },
        PaneItemSeparator{},
        PaneItemHeader{
            title: qsTr("Colorful components")
        },
        PaneItemExpander{
            title: qsTr("Inputs")
            icon.name: FluentIcons.graph_CheckboxComposite
            icon.width: 15
            icon.height: 15
            PaneItemExpander{
                title: qsTr("Button")
                icon.name: FluentIcons.graph_ToggleBorder
                PaneItem{
                    title: qsTr("InputValidation")
                    enabled: false
                }
                PaneItem{
                    key: "/inputs/button/standard"
                    title: qsTr("Button")
                    count: 10
                    onTap: {
                        count = 0
                    }
                }
                PaneItem{
                    key: "/inputs/button/filled"
                    title: qsTr("FilledButton")
                    count: 100
                    infoBadge: InfoBadge{
                        count: model.count
                        color: Colors.teal.defaultBrushFor()
                    }
                    onTap: {
                        count = 0
                    }
                }
                PaneItem{
                    key: "/inputs/button/pill"
                    title: qsTr("PillButton")
                }
                PaneItem{
                    key: "/inputs/button/delay"
                    title: qsTr("DelayButton")
                }
                PaneItem{
                    key: "/inputs/button/icon"
                    title: qsTr("IconButton")
                }
                PaneItem{
                    key: "/inputs/button/dropdown"
                    title: qsTr("DropDownButton")
                }
                PaneItem{
                    key: "/inputs/button/hyperlink"
                    title: qsTr("HyperlinkButton")
                }
                PaneItem{
                    key: "/inputs/button/toggle"
                    title: qsTr("ToggleButton")
                }
                PaneItem{
                    key: "/inputs/button/radio"
                    title: qsTr("RadioButton")
                }
                PaneItem{
                    key: "/inputs/button/progress"
                    title: qsTr("ProgressButton")
                }
                PaneItem{
                    key: "/inputs/button/chip"
                    title: qsTr("Chip")
                }
            }
            PaneItem{
                key: "/inputs/copyabletext"
                title: qsTr("CopyableText")
            }
            PaneItem{
                key: "/inputs/checkbox"
                title: qsTr("Checkbox")
            }
            PaneItem{
                key: "/inputs/slider"
                title: qsTr("Slider")
                count: 99
                infoBadge: InfoBadge{
                    count: model.count
                    color: Colors.purple.defaultBrushFor()
                }
                onTap: {
                    count = 0
                }
            }
            PaneItem{
                key: "/inputs/toggleswitch"
                title: qsTr("ToggleSwitch")
            }
        },
        PaneItemExpander{
            title: qsTr("Form")
            icon.name: FluentIcons.graph_Recent
            PaneItemExpander{
                title: qsTr("Picker")
                PaneItem{
                    key: "/form/timepicker"
                    title: qsTr("TimePicker")
                }
                PaneItem{
                    key: "/form/datepicker"
                    title: qsTr("DatePicker")
                }
                PaneItem{
                    key: "/form/calendarpicker"
                    title: qsTr("CalendarPicker")
                }
                PaneItem{
                    key: "/form/colorpicker"
                    title: qsTr("ColorPicker")
                }
                PaneItem{
                    key: "/form/shortcutpicker"
                    title: qsTr("ShortcutPicker")
                }
            }
            PaneItem{
                key: "/form/textbox"
                title: qsTr("TextBox")
            }
            PaneItem{
                key: "/form/multilinetextbox"
                title: qsTr("MultiLineTextBox")
            }
            PaneItem{
                key: "/form/passwordbox"
                title: qsTr("PasswordBox")
            }
            PaneItem{
                key: "/form/autosuggestbox"
                title: qsTr("AutoSuggestBox")
            }
            PaneItem{
                key: "/form/combobox"
                title: qsTr("ComboBox")
            }
            PaneItem{
                key: "/form/multiselectcombobox"
                title: qsTr("MultiSelectComboBox")
            }
            PaneItem{
                key: "/form/numberbox"
                title: qsTr("NumberBox")
            }
            PaneItem{
                key: "/form/spinbox"
                title: qsTr("SpinBox")
            }
        },
        PaneItemExpander{
            title: qsTr("Navigation")
            icon.name: FluentIcons.graph_AllApps
            PaneItem{
                key: "/navigation/breadcrumb"
                title: qsTr("Breadcrumb")
            }
            PaneItem{
                key: "/navigation/navigationview"
                title: qsTr("NavigationView")
            }
            PaneItem{
                key: "/navigation/tabbar"
                title: qsTr("TabBar")
            }
            PaneItem{
                key: "/navigation/segmentedcontrol"
                title: qsTr("SegmentedControl")
            }
            PaneItem{
                key: "/navigation/tabview"
                title: qsTr("TabView")
            }
            PaneItem{
                key: "/navigation/datagrid"
                title: qsTr("DataGrid")
            }
            PaneItem{
                key: "/navigation/treedatagrid"
                title: qsTr("TreeDataGrid")
            }
            PaneItem{
                key: "/navigation/filetreedata"
                title: qsTr("FileTreeData")
            }
            PaneItem{
                key: "/navigation/pagination"
                title: qsTr("Pagination")
            }
            PaneItem{
                key: "/navigation/multiwindow"
                title: qsTr("MultiWindow")
            }
        },
        PaneItemExpander{
            title: qsTr("Layouts")
            icon.name: FluentIcons.graph_DockLeft
            PaneItem{
                key: "/layouts/splitlayout"
                title: qsTr("SplitLayout")
            }
            PaneItem{
                key: "/layouts/staggeredlayout"
                title: qsTr("StaggeredLayout")
            }
            PaneItem{
                key: "/layouts/fliplayout"
                title: qsTr("FlipLayout")
            }
            PaneItem{
                key: "/layouts/bannerlayout"
                title: qsTr("BannerLayout")
            }
        },
        PaneItemExpander{
            title: qsTr("Surfaces")
            icon.name: FluentIcons.graph_Tiles
            PaneItem{
                key: "/surfaces/iconlabel"
                title: qsTr("IconLabel")
            }
            PaneItem{
                key: "/surfaces/infobar"
                title: qsTr("InfoBar")
            }
            PaneItem{
                key: "/surfaces/infobadge"
                title: qsTr("InfoBadge")
            }
            PaneItem{
                key: "/surfaces/expander"
                title: qsTr("Expander")
            }
            PaneItem{
                key: "/surfaces/progressbar"
                title: qsTr("ProgressBar")
            }
            PaneItem{
                key: "/surfaces/progressring"
                title: qsTr("ProgressRing")
            }
            PaneItem{
                key: "/surfaces/watermark"
                title: qsTr("Watermark")
            }
            PaneItem{
                key: "/surfaces/ratingcontrol"
                title: qsTr("RatingControl")
            }
            PaneItem{
                key: "/surfaces/shimmer"
                title: qsTr("Shimmer")
            }
        },
        PaneItemExpander{
            title: qsTr("Popups")
            icon.name: FluentIcons.graph_Message
            PaneItem{
                key: "/popups/menu"
                title: qsTr("Menu")
            }
            PaneItem{
                key: "/popups/contentdialog"
                title: qsTr("ContentDialog")
            }
            PaneItem{
                key: "/popups/tooltip"
                title: qsTr("ToolTip")
            }
            PaneItem{
                key: "/popups/drawer"
                title: qsTr("Drawer")
            }
        },
        PaneItemExpander{
            title: qsTr("Chart")
            icon.name: FluentIcons.graph_AreaChart
            PaneItem{
                key: "/chart/bar"
                title: qsTr("Bar Chart")
            }
            PaneItem{
                key: "/chart/line"
                title: qsTr("Line Chart")
            }
            PaneItem{
                key: "/chart/pie"
                title: qsTr("Pie Chart")
            }
            PaneItem{
                key: "/chart/polararea"
                title: qsTr("Polar Area Chart")
            }
            PaneItem{
                key: "/chart/bubble"
                title: qsTr("Bubble Chart")
            }
            PaneItem{
                key: "/chart/scatter"
                title: qsTr("Scatter Chart")
            }
            PaneItem{
                key: "/chart/radar"
                title: qsTr("Radar Chart")
            }
        },
        PaneItemExpander{
            title: qsTr("Theme")
            icon.name: FluentIcons.graph_Color
            PaneItem{
                key: "/theme/acrylic"
                title: qsTr("Acrylic")
            }
            PaneItem{
                key: "/theme/colors"
                title: qsTr("Colors")
            }
            PaneItem{
                key: "/theme/typography"
                title: qsTr("Typography")
            }
            PaneItem{
                key: "/theme/icons"
                title: qsTr("Icons")
            }
        },
        PaneItemExpander{
            title: qsTr("Other")
            icon.name: FluentIcons.graph_Package
            PaneItem{
                key: "/other/tour"
                title: qsTr("Tour")
            }
            PaneItem{
                key: "/other/Marquee"
                title: qsTr("Marquee")
            }
            PaneItem{
                key: "/other/syntaxview"
                title: qsTr("SyntaxView")
            }
            PaneItem{
                key: "/other/qrcode"
                title: qsTr("QRCode")
            }
            PaneItem{
                key: "/other/dial"
                title: qsTr("Dial")
            }
        }
    ]
    property list<QtObject> originalFooterItems : [
        PaneItem{
            icon.name: FluentIcons.graph_Contact
            key: "/about"
            title: qsTr("About")
        },
        PaneItem{
            icon.name: FluentIcons.graph_Settings
            key: "/settings"
            title: qsTr("Settings")
        }
    ]
    PageRouter{
        id: page_router
        routes: {
            "/": {url: R.resolvedUrl("res/qml/page/T_Home.qml"),singleton:true},
            "/about": R.resolvedUrl("res/qml/page/T_About.qml"),
            "/settings": R.resolvedUrl("res/qml/page/T_Settings.qml"),
            "/inputs/button/standard": R.resolvedUrl("res/qml/page/T_StandardButton.qml"),
            "/inputs/button/filled": R.resolvedUrl("res/qml/page/T_FilledButton.qml"),
            "/inputs/button/pill": R.resolvedUrl("res/qml/page/T_PillButton.qml"),
            "/inputs/button/delay": R.resolvedUrl("res/qml/page/T_DelayButton.qml"),
            "/inputs/button/icon" : R.resolvedUrl("res/qml/page/T_IconButton.qml"),
            "/inputs/button/dropdown": R.resolvedUrl("res/qml/page/T_DropDownButton.qml"),
            "/inputs/button/hyperlink": R.resolvedUrl("res/qml/page/T_HyperlinkButton.qml"),
            "/inputs/button/toggle": R.resolvedUrl("res/qml/page/T_ToggleButton.qml"),
            "/inputs/button/radio": R.resolvedUrl("res/qml/page/T_RadioButton.qml"),
            "/inputs/button/progress": R.resolvedUrl("res/qml/page/T_ProgressButton.qml"),
            "/inputs/button/chip": R.resolvedUrl("res/qml/page/T_Chip.qml"),
            "/inputs/checkbox": R.resolvedUrl("res/qml/page/T_Checkbox.qml"),
            "/inputs/copyabletext": R.resolvedUrl("res/qml/page/T_CopyableText.qml"),
            "/inputs/slider": R.resolvedUrl("res/qml/page/T_Slider.qml"),
            "/inputs/toggleswitch": R.resolvedUrl("res/qml/page/T_ToggleSwitch.qml"),
            "/form/textbox": R.resolvedUrl("res/qml/page/T_TextBox.qml"),
            "/form/multilinetextbox": R.resolvedUrl("res/qml/page/T_MultiLineTextBox.qml"),
            "/form/passwordbox": R.resolvedUrl("res/qml/page/T_PasswordBox.qml"),
            "/form/autosuggestbox": R.resolvedUrl("res/qml/page/T_AutoSuggestBox.qml"),
            "/form/combobox": R.resolvedUrl("res/qml/page/T_ComboBox.qml"),
            "/form/multiselectcombobox": R.resolvedUrl("res/qml/page/T_MultiSelectComboBox.qml"),
            "/form/numberbox": R.resolvedUrl("res/qml/page/T_NumberBox.qml"),
            "/form/spinbox": R.resolvedUrl("res/qml/page/T_SpinBox.qml"),
            "/form/timepicker": R.resolvedUrl("res/qml/page/T_TimePicker.qml"),
            "/form/calendarpicker": R.resolvedUrl("res/qml/page/T_CalendarPicker.qml"),
            "/form/colorpicker": R.resolvedUrl("res/qml/page/T_ColorPicker.qml"),
            "/form/datepicker": R.resolvedUrl("res/qml/page/T_DatePicker.qml"),
            "/form/shortcutpicker": R.resolvedUrl("res/qml/page/T_ShortcutPicker.qml"),
            "/navigation/breadcrumb": R.resolvedUrl("res/qml/page/T_Breadcrumb.qml"),
            "/navigation/navigationview": R.resolvedUrl("res/qml/page/T_NavigationView.qml"),
            "/navigation/tabbar": R.resolvedUrl("res/qml/page/T_TabBar.qml"),
            "/navigation/segmentedcontrol": R.resolvedUrl("res/qml/page/T_SegmentedControl.qml"),
            "/navigation/tabview": R.resolvedUrl("res/qml/page/T_TabView.qml"),
            "/navigation/datagrid": R.resolvedUrl("res/qml/page/T_DataGrid.qml"),
            "/navigation/treedatagrid": R.resolvedUrl("res/qml/page/T_TreeDataGrid.qml"),
            "/navigation/filetreedata": R.resolvedUrl("res/qml/page/T_FileTreeData.qml"),
            "/navigation/pagination": R.resolvedUrl("res/qml/page/T_Pagination.qml"),
            "/navigation/multiwindow": R.resolvedUrl("res/qml/page/T_MultiWindow.qml"),
            "/surfaces/iconlabel": R.resolvedUrl("res/qml/page/T_IconLabel.qml"),
            "/layouts/splitlayout": R.resolvedUrl("res/qml/page/T_SplitLayout.qml"),
            "/layouts/staggeredlayout": R.resolvedUrl("res/qml/page/T_StaggeredLayout.qml"),
            "/layouts/bannerlayout": R.resolvedUrl("res/qml/page/T_BannerLayout.qml"),
            "/layouts/fliplayout": R.resolvedUrl("res/qml/page/T_FlipLayout.qml"),
            "/surfaces/infobar": R.resolvedUrl("res/qml/page/T_InfoBar.qml"),
            "/surfaces/infobadge": R.resolvedUrl("res/qml/page/T_InfoBadge.qml"),
            "/surfaces/expander": R.resolvedUrl("res/qml/page/T_Expander.qml"),
            "/surfaces/progressbar": R.resolvedUrl("res/qml/page/T_ProgressBar.qml"),
            "/surfaces/progressring": R.resolvedUrl("res/qml/page/T_ProgressRing.qml"),
            "/surfaces/watermark": R.resolvedUrl("res/qml/page/T_Watermark.qml"),
            "/surfaces/ratingcontrol": R.resolvedUrl("res/qml/page/T_RatingControl.qml"),
            "/surfaces/shimmer": R.resolvedUrl("res/qml/page/T_Shimmer.qml"),
            "/popups/menu": R.resolvedUrl("res/qml/page/T_Menu.qml"),
            "/popups/contentdialog": R.resolvedUrl("res/qml/page/T_ContentDialog.qml"),
            "/popups/tooltip": R.resolvedUrl("res/qml/page/T_ToolTip.qml"),
            "/popups/drawer": R.resolvedUrl("res/qml/page/T_Drawer.qml"),
            "/chart/bar": R.resolvedUrl("res/qml/chart/T_BarChart.qml"),
            "/chart/line": R.resolvedUrl("res/qml/chart/T_LineChart.qml"),
            "/chart/pie": R.resolvedUrl("res/qml/chart/T_PieChart.qml"),
            "/chart/polararea": R.resolvedUrl("res/qml/chart/T_PolarAreaChart.qml"),
            "/chart/bubble": R.resolvedUrl("res/qml/chart/T_BubbleChart.qml"),
            "/chart/scatter": R.resolvedUrl("res/qml/chart/T_ScatterChart.qml"),
            "/chart/radar": R.resolvedUrl("res/qml/chart/T_RadarChart.qml"),
            "/theme/colors": R.resolvedUrl("res/qml/page/T_Colors.qml"),
            "/theme/acrylic": R.resolvedUrl("res/qml/page/T_Acrylic.qml"),
            "/theme/typography": R.resolvedUrl("res/qml/page/T_Typography.qml"),
            "/theme/icons": R.resolvedUrl("res/qml/page/T_Icons.qml"),
            "/other/tour": R.resolvedUrl("res/qml/page/T_Tour.qml"),
            "/other/Marquee": R.resolvedUrl("res/qml/page/T_Marquee.qml"),
            "/other/syntaxview": R.resolvedUrl("res/qml/page/T_SyntaxView.qml"),
            "/other/qrcode": R.resolvedUrl("res/qml/page/T_QRCode.qml"),
            "/other/dial": R.resolvedUrl("res/qml/page/T_Dial.qml")
        }
    }
    Menu{
        id: item_menu
        property var item
        MenuItem{
            text: qsTr("Open in Separate Window")
            onClicked: {
                var url = page_router.toUrl(item_menu.item.key)
                var title = item_menu.item.title
                if(url){
                    WindowRouter.go("/page",{url:url,title:title})
                }
            }
        }
        function showMenu(item){
            item_menu.item = item
            item_menu.popup()
        }
    }
    NavigationView{
        id: navigation_view
        router: page_router
        anchors.fill: parent
        logo: "qrc:/qt/qml/Gallery/res/image/logo.png"
        title: "FluentUI Gallery"
        items: originalItems
        footerItems: originalFooterItems
        displayMode: Global.displayMode
        appBarHeight: Qt.platform.os === "osx" ? 60 : 48
        titleBarTopMargin: Qt.platform.os === "osx" ? 20 : 0
        autoSuggestBox: AutoSuggestBox{
            id: auto_suggset_search
            placeholderText: qsTr("Search")
            items: []
            trailing: RowLayout{
                IconButton{
                    implicitWidth: 30
                    implicitHeight: 20
                    icon.name: FluentIcons.graph_ChromeClose
                    icon.width: 10
                    icon.height: 10
                    visible: auto_suggset_search.text !== ""
                    onClicked: {
                        auto_suggset_search.clear()
                    }
                }
                IconButton{
                    implicitWidth: 30
                    implicitHeight: 20
                    icon.name: FluentIcons.graph_Search
                    enabled: false
                    icon.width: 14
                    icon.height: 14
                }
            }
            onTap:
                (item)=>{
                    if(item.key){
                        page_router.go(item.key)
                    }
                }
            Connections{
                target: navigation_view
                function onSourceItemsChanged(data){
                    auto_suggset_search.items = data.filter((item)=>{ return item instanceof PaneItem})
                }
            }
        }
        leading: comp_profile
        trailing: Item{
            height: 40
            Label{
                text: qsTr("Custom Content")
                anchors.centerIn: parent
            }
        }
        onTap:
            (item)=>{
                if(item.key){
                    page_router.go(item.key)
                }
            }
        onRightTap:
            (item)=>{
                if(item.key){
                    item_menu.showMenu(item)
                }
            }
        Component.onCompleted: {
            var onNextButtonListnenr = function(tour){
                page_router.go("/settings")
                tour.next()
            }
            var homeId = function(){return navigation_view.sideBarView.itemAtIndex(0)}
            var settingsId = function(){return navigation_view.sideBarFooterView.itemAtIndex(1)}
            window.tourSteps.push({title:qsTr("Home"),description: qsTr("Here you can switch to Home."),target:homeId,onNextListener: onNextButtonListnenr})
            window.tourSteps.push({title:qsTr("Settins"),description: qsTr("Here you can switch to Settins."),target:settingsId})
            page_router.go("/")
        }
    }
    Component{
        id: comp_profile
        Item{
            height: 80
            IconButton{
                anchors{
                    fill: parent
                    leftMargin: 4
                    rightMargin: 4
                }
                RoundImageView{
                    id: avatar
                    width: 60
                    height: 60
                    radius: 30
                    sourceSize: Qt.size(120,120)
                    anchors{
                        verticalCenter: parent.verticalCenter
                        left: parent.left
                        leftMargin: 10
                    }
                    source: "qrc:/qt/qml/Gallery/res/image/ic_avatar.jpg"
                }
                Column{
                    spacing: 4
                    anchors{
                        left: avatar.right
                        leftMargin: 10
                        verticalCenter: parent.verticalCenter
                    }
                    Label{
                        text: "ZhuZiChu"
                    }
                    Label{
                        text: "zhuzichu520@outlook.com"
                        color: control.FluentUI.theme.res.textFillColorSecondary
                    }
                }
                onClicked: {
                    Qt.openUrlExternally("https://github.com/zhuzichu520/FluentUI")
                }
            }
        }
    }
}
