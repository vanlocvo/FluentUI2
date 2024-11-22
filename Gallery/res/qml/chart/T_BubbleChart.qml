import QtQuick
import QtQuick.Layouts
import QtQuick.Window
import QtQuick.Controls
import FluentUI.Controls
import Gallery

ScrollablePage{

    title: qsTr("Bubble Chart")

    CardHighlight{
        Layout.fillWidth: true
        showDisabled: false
        codeSnippet:
            `import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI.Controls

ColumnLayout {
    Frame{
        Layout.preferredWidth: 500
        Layout.preferredHeight: 370
        padding: 10
        Chart{
            anchors.fill: parent
            type: "bubble"
            datas: {
                return {
                    datasets: [{
                            label: "First Dataset",
                            data: [{
                                    x: 20,
                                    y: 30,
                                    r: 15
                                }, {
                                    x: 12,
                                    y: 70,
                                    r: 20
                                }, {
                                    x: 11,
                                    y: 28,
                                    r: 8
                                }, {
                                    x: 9,
                                    y: 28,
                                    r: 10
                                }, {
                                    x: 43,
                                    y: 7,
                                    r: 14
                                }, {
                                    x: 22,
                                    y: 22,
                                    r: 12
                                }, {
                                    x: 40,
                                    y: 10,
                                    r: 10
                                }],
                            backgroundColor: "rgb(255, 99, 132)"
                        }]
                }}
            options: {return {
                    maintainAspectRatio: false,
                    responsive: true,
                    hoverMode: "nearest",
                    intersect: true,
                    title: {
                        display: true,
                        text: "Chart.js Bubble Chart - Multi Axis"
                    }
                }
            }
        }
    }
}
`}




}
