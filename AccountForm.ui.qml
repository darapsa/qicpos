import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Rectangle {
	property alias skuTextField: addProduct
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

	TextField {
		id: addProduct
		height: 56
		color: "#deffffff"
		placeholderText: "Add Product"
		placeholderTextColor: "#99ffffff"
		anchors.left: parent.left
		anchors.right: parent.right
		anchors.top: addCustomer.bottom
		font.pixelSize: 20
		verticalAlignment: Text.AlignVCenter
		selectionColor: "#ffffff"
		anchors.rightMargin: 16
		anchors.leftMargin: 16
		font.family: "Roboto Mono"
		anchors.topMargin: 16
	}

	Button {
		id: submit
		text: "Tagih"
		anchors.left: parent.left
		anchors.right: parent.right
		anchors.bottom: parent.bottom
		flat: true
		font.capitalization: Font.MixedCase
		font.family: "Roboto Mono"
		anchors.rightMargin: 16
		anchors.leftMargin: 16
		anchors.bottomMargin: 16
		background: Rectangle {
			implicitHeight: 30
			radius: 4
		}
	}
}
