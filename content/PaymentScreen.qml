import QtQuick 6.5
import QtQuick.Controls

Rectangle {
    signal buttonClicked
    signal okClicked
    id: paymentScreen
    gradient: Gradient {
        id: mainScreenBg
        GradientStop { position: 0.0; color: "lightblue" }
        GradientStop { position: 1.0; color: "lightgreen" }
    }
    Rectangle {
        id: card
        visible: true
        width: 300
        height: 180
        x: 200
        y: 175
        color: "orange"
        radius: 10
        TextField {
            id: cardNumber
            anchors.centerIn: parent
            placeholderText: "xxxx xxxx xxxx xxxx"
        }
        TextField {
            id: validDate
            width: 50
            height: 30
            x: 50
            y: 130
            placeholderText: "Valid"
            font.pixelSize: 12
        }
        TextField {
            id: cvv
            width: 50
            height: 30
            x: 130
            y: 130
            placeholderText: "CVV"
            font.pixelSize: 12
        }
    }
    RoundButton {
        id: payButton
        text: "Pay"
        width: 80
        height: 40
        font.pixelSize: 16
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height - 100
        onPressed: { scale = 0.9 }
        onReleased: { scale = 1.0 }
        onClicked: {
            var cardNumberValid = validateCardNumber(cardNumber.text);
            var expiryDateValid = validateExpiryDate(validDate.text);
            var cvvValid = validateCVV(cvv.text);
            if (cardNumberValid && expiryDateValid && cvvValid) {
                card.visible = false
                paymentStatus.visible = true
                payButton.visible = false
                backToCheckout.visible = false
                okButton.visible = true
            }
            cardNumber.text = ""
            validDate.text = ""
            cvv.text = ""
        }
        Rectangle {
            radius: 10
            anchors.fill: parent
            color: "white"
        }
    }
    RoundButton {
        id: backToCheckout
        text: "⬅"
        font.pixelSize: 30
        height: 40
        x: 20
        y: parent.height - 50
        onPressed: { scale = 0.9 }
        onReleased: { scale = 1.0 }
        onClicked: {
            buttonClicked()
        }
        Rectangle {
            radius: 10
            anchors.fill: parent
            color: "white"
        }
    }
    Text {
        id: paymentStatus
        text: "Successfully paid!"
        anchors.centerIn: parent
        visible: false
        font.pixelSize: 20
    }
    RoundButton {
        id: okButton
        text: "OK"
        visible: false
        width: 80
        height: 40
        font.pixelSize: 16
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height - 100
        onPressed: { scale = 0.9 }
        onReleased: { scale = 1.0 }
        onClicked: {
                card.visible = true
                paymentStatus.visible = false
                payButton.visible = true
                backToCheckout.visible = true
                okButton.visible = false
                okClicked()
        }
        Rectangle {
            radius: 10
            anchors.fill: parent
            color: "white"
        }
    }
    function validateCardNumber(input) {
        return /^[0-9]{16}$/.test(input);
    }

    function validateExpiryDate(input) {
        return /^(0[1-9]|1[0-2])\/\d{2}$/.test(input);
    }

    function validateCVV(input) {
        return /^[0-9]{3}$/.test(input);
    }
}
