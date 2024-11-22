import QtQuick
import QtQuick.Layouts
import QtQuick.Window
import QtQuick.Controls
import FluentUI.Controls
import Gallery

ScrollablePage{

    title: qsTr("Line Chart")

    CardHighlight{
        Layout.fillWidth: true
        showDisabled: false
        codeSnippet:
            `import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI.Controls

ColumnLayout {
    id: root
    property var chartData : []
    Frame{
        Layout.preferredWidth: 500
        Layout.preferredHeight: 370
        padding: 10
        Chart{
            id: chart
            anchors.fill: parent
            type: "line"
            datas: { return {
                    labels: ["January", "February", "March", "April", "May", "June", "July"],
                    datasets: [{
                            label: "My First Dataset",
                            data: root.chartData,
                            fill: false,
                            borderColor: "rgb(75, 192, 192)",
                            tension: 0.1
                        }]
                }
            }
            options: { return {
                    maintainAspectRatio: false,
                    title: {
                        display: true,
                        text: "Chart.js Line Chart - Stacked"
                    },
                    tooltips: {
                        mode: "index",
                        intersect: false
                    }
                }
            }
        }
        Timer{
            id: timer
            interval: 1000
            repeat: true
            onTriggered: {
                root.chartData.push(Math.random()*100)
                if(root.chartData.length>7){
                    root.chartData.shift()
                }
                chart.animateToNewData()
            }
        }
        Component.onCompleted: {
            timer.restart()
        }
    }
}
`}

}
