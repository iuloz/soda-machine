// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.5
import QtQuick.Controls
import SodaMachine

Window {
    id: addWindow
    width: 700
    height: 500
    visible: true
    title: "SodaMachine"
    property double totalSum: 0
    property int colaAmount: 0
    property int pepsiAmount: 0
    property int fantaAmount: 0
    property int spriteAmount: 0
    Rectangle {
        id: mainScreen
        anchors.fill: parent
        gradient: Gradient {
            id: mainScreenBg
            GradientStop { position: 0.0; color: "lightblue" }
            GradientStop { position: 1.0; color: "lightgreen" }
        }
        property string buttonColor: "white"
        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.verticalCenter
            spacing: 30
            Column {
                id: colaColumn
                spacing: 15
                Image {
                    id: cola
                    width: 100
                    height: 100
                    source: "images/coca-cola.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                    Behavior on rotation {
                        NumberAnimation {
                            duration: 300
                        }
                    }
                }
                Text {
                    id: colaName
                    text: "Coca-Cola 1 l"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: colaPrice
                    text: "1.99 $"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Row {
                    spacing: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                    CustomButton {
                        text: "-"
                        onButtonClicked: {
                            totalSum = (totalSum <= 1.99) ? 0 : (totalSum - 1.99).toFixed(2)
                            colaAmount = (colaAmount < 1) ? 0 : colaAmount -1
                        }
                    }
                    Text {
                        anchors.horizontalCenter: colaColumn.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        text: colaAmount
                    }
                    RotationAnimation {
                        id: colaRotation
                        target: cola
                        duration: 300
                        from: 0
                        to: 360
                    }
                    CustomButton {
                        onButtonClicked: {
                            totalSum = (totalSum + 1.99).toFixed(2)
                            colaAmount += 1
                            colaRotation.running = true


                        }
                    }
                }
            }
            Column {
                id: pepsiColumn
                spacing: 15
                Image {
                    id: pepsi
                    width: 100
                    height: 100
                    source: "images/pepsi.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    text: "Pepsi 0.33 l"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    text: "1.19 $"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Row {
                    spacing: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                    CustomButton {
                        text: "-"
                        onButtonClicked: {
                            totalSum = (totalSum <= 1.99) ? 0 : (totalSum - 1.99).toFixed(2)
                            pepsiAmount = (pepsiAmount < 1) ? 0 : pepsiAmount -1
                        }
                    }
                    Text {
                        anchors.horizontalCenter: pepsiColumn.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        text: pepsiAmount
                    }
                    RotationAnimation {
                        id: pepsiRotation
                        target: pepsi
                        duration: 300
                        from: 0
                        to: 360
                    }
                    CustomButton {
                        onButtonClicked: {
                            totalSum = (totalSum + 1.99).toFixed(2)
                            pepsiAmount += 1
                            pepsiRotation.running = true
                        }
                    }
                }
            }
            Column {
                id: fantaColumn
                spacing: 15
                Image {
                    id: fanta
                    width: 100
                    height: 100
                    source: "images/fanta.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: fantaName
                    text: "Fanta 0.33 l"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: fantaPrice
                    text: "1.19 $"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Row {
                    spacing: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                    CustomButton {
                        text: "-"
                        onButtonClicked: {
                            totalSum = (totalSum <= 1.99) ? 0 : (totalSum - 1.99).toFixed(2)
                            fantaAmount = (fantaAmount < 1) ? 0 : fantaAmount -1
                        }
                    }
                    Text {
                        anchors.horizontalCenter: fantaColumn.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        text: fantaAmount
                    }
                    RotationAnimation {
                        id: fantaRotation
                        target: fanta
                        duration: 300
                        from: 0
                        to: 360
                    }
                    CustomButton {
                        onButtonClicked: {
                            totalSum = (totalSum + 1.99).toFixed(2)
                            fantaAmount += 1
                            fantaRotation.running = true
                        }
                    }
                }
            }
            Column {
                id: spriteColumn
                spacing: 15
                Image {
                    id: sprite
                    width: 80
                    height: 100
                    source: "images/sprite.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: spriteName
                    text: "Sprite 0.5 l"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: spritePrice
                    text: "1.49 $"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Row {
                    spacing: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                    CustomButton {
                        text: "-"
                        onButtonClicked: {
                            totalSum = (totalSum <= 1.99) ? 0 : (totalSum - 1.99).toFixed(2)
                            spriteAmount = (spriteAmount < 1) ? 0 : spriteAmount -1
                        }
                    }
                    Text {
                        anchors.horizontalCenter: spriteColumn.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        text: spriteAmount
                    }
                    RotationAnimation {
                        id: spriteRotation
                        target: sprite
                        duration: 300
                        from: 0
                        to: 360
                    }
                    CustomButton {
                        onButtonClicked: {
                            totalSum = (totalSum + 1.99).toFixed(2)
                            spriteAmount += 1
                            spriteRotation.running = true
                        }
                    }
                }
            }
        }
        RoundButton {
            id: checkoutButton
            text: "Proceed"
            anchors.horizontalCenter: parent.horizontalCenter
            y: parent.height - 50
            onPressed: { scale = 0.9 }
            onReleased: { scale = 1.0 }
            onClicked: {
                mainScreen.visible = false
                checkoutScreen.visible = true
            }

            Rectangle {
                radius: 10
                anchors.fill: parent
                color: mainScreen.buttonColor
            }
        }
    }


    Rectangle {
        id: checkoutScreen
        anchors.fill: parent
        width: 700
        height: 500
        visible: false
        gradient: Gradient {
            id: checkoutScreenBg
            GradientStop { position: 0.0; color: "lightgreen" }
            GradientStop { position: 1.0; color: "pink" }
        }

        Column {
            spacing: 5
            id: checkoutColumn
            anchors.horizontalCenter: parent.horizontalCenter
            y: 20
            Row {
                Column {
                    spacing: 5
                    Image {
                        width: 70
                        height: 70
                        source: "images/coca-cola.png"
                    }
                    Text {
                        text: "Coca-Cola 1l"
                    }
                }
                Text {
                    font.pixelSize: 30
                    anchors.verticalCenter: parent.verticalCenter
                    text: "x   " + colaAmount
                }
            }
            Row {
                Column {
                    spacing: 5
                    Image {
                        width: 70
                        height: 70
                        source: "images/pepsi.png"
                    }
                    Text {
                        text: "Pepsi 0.33l"
                    }
                }
                Text {
                    font.pixelSize: 30
                    anchors.verticalCenter: parent.verticalCenter
                    text: "x   " + pepsiAmount
                }
            }
            Row {
                Column {
                    spacing: 5
                    Image {
                        width: 70
                        height: 70
                        source: "images/fanta.png"
                    }
                    Text {
                        text: "Fanta 0.33l"
                    }
                }
                Text {
                    font.pixelSize: 30
                    anchors.verticalCenter: parent.verticalCenter
                    text: "x   " + fantaAmount
                }
            }
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                Column {
                    spacing: 5
                    Image {
                        width: 56
                        height: 70
                        source: "images/sprite.png"
                    }
                    Text {
                        text: "Sprite 0.5l"
                    }
                }
                Text {
                    font.pixelSize: 30
                    anchors.verticalCenter: parent.verticalCenter
                    text: "x   " + spriteAmount
                }
            }
        }
        RoundButton {
            id: backToMainButton
            text: "⬅"
            font.pixelSize: 30
            height: 40
            x: 20
            y: parent.height - 50
            onPressed: { scale = 0.9 }
            onReleased: { scale = 1.0 }
            onClicked: {
                mainScreen.visible = true
                checkoutScreen.visible = false
            }

            Rectangle {
                radius: 10
                anchors.fill: parent
                color: "whitesmoke"
            }
        }
        RoundButton {
            id: buyButton
            text: "Buy"
            width: 80
            height: 40
            font.pixelSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
            y: parent.height - 50
            onPressed: { scale = 0.9 }
            onReleased: { scale = 1.0 }
            onClicked: {
                checkoutScreen.visible = false
                paymentScreen.visible = true
            }
            Rectangle {
                radius: 10
                border.color: "green"
                anchors.fill: parent
                color: "lightgreen"
            }
        }
        Text {
            id: sum
            text: "Total sum: " + totalSum + " $"
            font.pixelSize: 24
            color: "black"
            anchors.right: parent.right
            anchors.rightMargin: 20
            y: parent.height - 50
        }
    }

    Rectangle {
        id: paymentScreen
        anchors.fill: parent
        visible: false
        PaymentScreen {
            anchors.fill: parent
            onButtonClicked: {
                checkoutScreen.visible = true
                paymentScreen.visible = false
            }
            onOkClicked: {
                mainScreen.visible = true
                paymentScreen.visible = false
                totalSum = 0
                colaAmount = 0
                pepsiAmount = 0
                fantaAmount = 0
                spriteAmount = 0
            }
        }
    }
}

