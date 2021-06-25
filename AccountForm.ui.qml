import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import "components"

Rectangle {
    property alias item: addProduct
    property alias submitButton: submit
    color: "#121212"
    border.color: "#00000000"

    TextField {
        id: addCustomer
        height: 56
        color: "#deffffff"
        placeholderText: "Add Customer"
        placeholderTextColor: "#99ffffff"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        font.pixelSize: 20
        verticalAlignment: Text.AlignVCenter
        font.family: "Roboto Mono"
        selectionColor: "#ffffff"
        anchors.rightMargin: 16
        anchors.leftMargin: 16
        anchors.topMargin: 16
    }

    ListWithIconForm {
        id: addProduct
        height: 56
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: addCustomer.bottom
        anchors.rightMargin: 16
        anchors.leftMargin: 16
        anchors.topMargin: 16
    }
    Button {
        id: submit
        text: qsTr("Tagih")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        font.letterSpacing: 1.24
        spacing: 8
        autoRepeat: false
        highlighted: false
        flat: false
        font.capitalization: Font.MixedCase
        font.family: "Roboto Mono"
        anchors.rightMargin: 16
        anchors.leftMargin: 16
        anchors.bottomMargin: 16
    }
}
