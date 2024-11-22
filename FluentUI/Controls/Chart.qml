import QtQuick
import QtQuick.Controls
import "Chart.js" as Chart

Canvas {
    id: control
    property string type
    property var datas
    property var options
    property double chartAnimationProgress: 0.1
    property int animationEasingType: Theme.animationCurve
    property double animationDuration: Theme.slowAnimationDuration
    property alias animationRunning: chartAnimator.running
    signal animationFinished()
    function animateToNewData(){}
	PropertyAnimation {
        id: chartAnimator
    }
}
