import QtQuick
import QtQuick.Layouts
import QtQuick.Window
import QtQuick.Controls
import FluentUI.Controls
import Gallery

ScrollablePage{

    title: qsTr("Polar Area Chart")

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
            type: "polarArea"
            datas: { return {
                    labels: [
                        "Red",
                        "Green",
                        "Yellow",
                        "Grey",
                        "Blue"
                    ],
                    datasets: [{
                            label: "My First Dataset",
                            data: [11, 16, 7, 3, 14],
                            backgroundColor: [
                                "rgb(255, 99, 132)",
                                "rgb(75, 192, 192)",
                                "rgb(255, 205, 86)",
                                "rgb(201, 203, 207)",
                                "rgb(54, 162, 235)"
                            ]
                        }]
                }
            }
            options: { return {
                    maintainAspectRatio: false,
                    title: {
                        display: true,
                        text: "Chart.js PolarArea Chart - Stacked"
                    },
                    tooltips: {
                        mode: "index",
                        intersect: false
                    }
                }
            }
        }
    }
}
`}


}
