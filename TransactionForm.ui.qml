import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
	property alias cartView: cart
	property alias accountView: account
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

	AccountForm {
		id: account
		anchors.left: parent.left
		anchors.right: parent.right
		anchors.top: cart.bottom
		anchors.bottom: parent.bottom
		anchors.rightMargin: 16
		anchors.leftMargin: 16
		anchors.topMargin: 16
	}
}
