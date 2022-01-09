import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
	property alias button: listButton

	width: 360
	height: 48
	Layout.minimumWidth: 360
	Layout.minimumHeight: 48

	Item {
		id: row
		anchors.fill: parent

		Label {
			id: listLabel
			text: qsTr("List label with icon")
			anchors.verticalCenter: parent.verticalCenter
			anchors.left: parent.left
			font.letterSpacing: 0.15
			font.weight: Font.Medium
			anchors.leftMargin: 16
			font.pointSize: 16
		}

		ToolButton {
			id: listButton
			width: 24
			height: 24
			text: qsTr("List Tool Button")
			anchors.verticalCenter: parent.verticalCenter
			anchors.right: parent.right
			padding: 0
			display: AbstractButton.IconOnly
			highlighted: false
			anchors.rightMargin: 16
			icon.name: "addIcon"
			icon.source: "../icons/add-24px.svg"
		}
	}
}
