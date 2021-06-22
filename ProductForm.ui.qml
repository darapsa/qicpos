import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15

Rectangle {
	property alias previewImage: image
	property alias nameLabel: nameLabel
	property alias priceLabel: priceLabel

	id: rectangle
	width: 328
	height: 132
	color: "#2a2a2a"
	layer.enabled: true
	layer.effect: OpacityMask {
		maskSource: Rectangle {
			anchors.centerIn: parent
			width: rectangle.width
			height: rectangle.height
			radius: 8
		}
	}

	RowLayout {
		Image {
			id: image
			width: 64
			height: 64
			layer.enabled: true
			layer.effect: OpacityMask {
				maskSource: Rectangle {
					anchors.centerIn: parent
					width: image.width
					height: image.height
					radius: 8
				}
			}
		}

		ColumnLayout {
			Label {
				id: nameLabel
				text: "Nama produk"
				color: "#cccccc"
			}
			Label {
				id: quantityLabel
				text: "12 unit"
				color: "#888888"
			}
			Label {
				id: priceLabel
				text: "Rp999.999.999"
				color: "#cccccc"
			}
		}
	}
}
