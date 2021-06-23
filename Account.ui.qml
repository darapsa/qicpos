import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
	color: "#121212"
	border.color: "#00000000"

	TextInput {
		id: addCustomer
		height: 56
		color: "#deffffff"
		text: "Add Customer"
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

	TextInput {
		id: addProduct
		height: 56
		color: "#deffffff"
		text: "Add Product"
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
}
