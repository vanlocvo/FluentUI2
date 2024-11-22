import QtQuick
import QtQuick.Layouts
import QtQuick.Window
import QtQuick.Controls
import FluentUI.Controls
import Gallery

ScrollablePage{

    title: qsTr("Pie Chart")

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
            type: "doughnut"
            datas: { return {
                    labels: [
                        "Red",
                        "Blue",
                        "Yellow"
                    ],
                    datasets: [{
                            label: "My First Dataset",
                            data: [300, 50, 100],
                            backgroundColor: [
                                "rgb(255, 99, 132)",
                                "rgb(54, 162, 235)",
                                "rgb(255, 205, 86)"
                            ],
                            hoverOffset: 4
                        }]
                }
            }
            options: { return {
                    maintainAspectRatio: false,
                    title: {
                        display: true,
                        text: "Chart.js Doughnut Chart - Stacked"
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
