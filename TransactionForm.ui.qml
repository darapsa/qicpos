import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
	property alias cartView: cart
	property alias skuTextField: addProduct
	property alias submitButton: submit
	color: "#121212"
	border.color: "#00000000"

	ListView {
		id: cart
		height: 120
		anchors.left: parent.left
		anchors.right: parent.right
		anchors.top: parent.top
		anchors.rightMargin: 16
		anchors.leftMargin: 16
		anchors.topMargin: 16
		spacing: 8
		ScrollBar.horizontal: ScrollBar {}
	}

	TextField {
		id: addCustomer
		height: 56
		color: "#deffffff"
		placeholderText: "Add Customer"
		placeholderTextColor: "#99ffffff"
		anchors.left: parent.left
		anchors.right: parent.right
		anchors.top: cart.bottom
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
