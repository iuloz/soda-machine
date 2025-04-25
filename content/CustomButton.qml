import QtQuick 6.5
import QtQuick.Controls

RoundButton {
    signal buttonClicked()
    width: 30
    height: 30
    text: "+"
    onPressed: { scale = 0.9 }
    onReleased: { scale = 1.0 }
    onClicked: {
        buttonClicked()
    }
    Rectangle {
        radius: parent.height/2
        anchors.fill: parent
        color: mainScreen.buttonColor
    }
}
