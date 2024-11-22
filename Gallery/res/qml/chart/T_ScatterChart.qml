import QtQuick
import QtQuick.Layouts
import QtQuick.Window
import QtQuick.Controls
import FluentUI.Controls
import Gallery

ScrollablePage{

    title: qsTr("Scatter Chart")

    CardHighlight{
        Layout.fillWidth: true
        showDisabled: false
        codeSnippet:
            `import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI.Controls

ColumnLayout {
    function randomScalingFactor() {
        return Math.random().toFixed(1)
    }

    Frame{
        Layout.preferredWidth: 500
        Layout.preferredHeight: 370
        padding: 10
        Chart{
            anchors.fill: parent
            type: "scatter"
            datas: {
                return {
                    datasets: [{
                            label: "My First dataset",
                            xAxisID: "x-axis-1",
                            yAxisID: "y-axis-1",
                            borderColor: "#ff5555",
                            backgroundColor: "rgba(255,192,192,0.3)",
                            data: [{
                                    x: randomScalingFactor(),
                                    y: randomScalingFactor(),
                                }, {
                                    x: randomScalingFactor(),
                                    y: randomScalingFactor(),
                                }, {
                                    x: randomScalingFactor(),
                                    y: randomScalingFactor(),
                                }, {
                                    x: randomScalingFactor(),
                                    y: randomScalingFactor(),
                                }, {
                                    x: randomScalingFactor(),
                                    y: randomScalingFactor(),
                                }, {
                                    x: randomScalingFactor(),
                                    y: randomScalingFactor(),
                                }, {
                                    x: randomScalingFactor(),
                                    y: randomScalingFactor(),
                                }]
                        }, {
                            label: "My Second dataset",
                            xAxisID: "x-axis-1",
                            yAxisID: "y-axis-2",
                            borderColor: "#5555ff",
                            backgroundColor: "rgba(192,192,255,0.3)",
                            data: [{
                                    x: randomScalingFactor(),
                                    y: randomScalingFactor(),
                                }, {
                                    x: randomScalingFactor(),
                                    y: randomScalingFactor(),
                                }, {
                                    x: randomScalingFactor(),
                                    y: randomScalingFactor(),
                                }, {
                                    x: randomScalingFactor(),
                                    y: randomScalingFactor(),
                                }, {
                                    x: randomScalingFactor(),
                                    y: randomScalingFactor(),
                                }, {
                                    x: randomScalingFactor(),
                                    y: randomScalingFactor(),
                                }, {
                                    x: randomScalingFactor(),
                                    y: randomScalingFactor(),
                                }]
                        }]
                }}
            options: {return {
                    maintainAspectRatio: false,
                    responsive: true,
                    hoverMode: "nearest",
                    intersect: true,
                    title: {
                        display: true,
                        text: "Chart.js Scatter Chart - Multi Axis"
                    },
                    scales: {
                        xAxes: [{
                                position: "bottom",
                                gridLines: {
                                    zeroLineColor: "rgba(0,0,0,1)"
                                }
                            }],
                        yAxes: [{
                                type: "linear",
                                display: true,
                                position: "left",
                                id: "y-axis-1",
                            }, {
                                type: "linear",
                                display: true,
                                position: "right",
                                reverse: true,
                                id: "y-axis-2",
                                gridLines: {
                                    drawOnChartArea: false,
                                },
                            }],
                    }
                }
            }
        }
    }
}
`}

}
