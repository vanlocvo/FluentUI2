import QtQuick
import QtQuick.Layouts
import QtQuick.Window
import QtQuick.Controls
import FluentUI.Controls
import Gallery

ScrollablePage{

    title: qsTr("Radar Chart")

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
            type: "radar"
            datas: { return {
                    labels: [
                        "Eating",
                        "Drinking",
                        "Sleeping",
                        "Designing",
                        "Coding",
                        "Cycling",
                        "Running"
                    ],
                    datasets:
                        [{
                            label: "My First Dataset",
                            data: [65, 59, 90, 81, 56, 55, 40],
                            fill: true,
                            backgroundColor: "rgba(255, 99, 132, 0.2)",
                            borderColor: "rgb(255, 99, 132)",
                            pointBackgroundColor: "rgb(255, 99, 132)",
                            pointBorderColor: "#fff",
                            pointHoverBackgroundColor: "#fff",
                            pointHoverBorderColor: "rgb(255, 99, 132)"
                        }, {
                            label: "My Second Dataset",
                            data: [28, 48, 40, 19, 96, 27, 100],
                            fill: true,
                            backgroundColor: "rgba(54, 162, 235, 0.2)",
                            borderColor: "rgb(54, 162, 235)",
                            pointBackgroundColor: "rgb(54, 162, 235)",
                            pointBorderColor: "#fff",
                            pointHoverBackgroundColor: "#fff",
                            pointHoverBorderColor: "rgb(54, 162, 235)"
                        }]
                }
            }
            options: { return {
                    maintainAspectRatio: false,
                    title: {
                        display: true,
                        text: "Chart.js Radar Chart - Stacked"
                    },
                    tooltips: {
                        mode: "index",
                        intersect: false
                    },
                    elements: {
                        line: {
                            borderWidth: 3
                        }
                    }
                }
            }
        }
    }
}
`}

}
