import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15

Item {
	property alias previewImage: imageCardPreview
	property alias nameLabel: productTitle
	property alias priceLabel: productAmount

    width: 360
    height: 80

    Rectangle {
        id: productCardBg
        color: "#1fffffff"
        radius: 8
        border.width: 0
        anchors.fill: parent

        Row {
            id: productCardRow
            anchors.fill: parent
            spacing: 8

            ToolButton {
                id: productCardMoreButton
                width: 24
                height: 24
                text: qsTr("Tool Button")
                anchors.right: parent.right
                anchors.top: parent.top
                padding: 0
                anchors.topMargin: 8
                display: AbstractButton.IconOnly
                anchors.rightMargin: 8
                icon.source: "../icons/more-vert-24px.svg"
            }

            Column {
                id: column
                anchors.left: imageCardPreview.right
                anchors.right: productCardMoreButton.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 8
                anchors.rightMargin: 16
                anchors.leftMargin: 8
                anchors.topMargin: 8

                Label {
                    id: productTitle
                    text: qsTr("Product title")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    font.letterSpacing: 0.25
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    font.kerning: false
                    font.pointSize: 14
                }

                RowLayout {
                    id: rowLayout
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: productTitle.bottom
                    anchors.topMargin: 8
                    spacing: 8
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0

                    Label {
                        id: stock
                        color: "#99ffffff"
                        text: qsTr("Stock")
                        font.letterSpacing: 0.4
                        font.pointSize: 12
                        font.family: "Roboto Mono"
                    }
                    Label {
                        id: remainingStock
                        color: "#99ffffff"
                        text: qsTr("1,234,567")
                        font.letterSpacing: 0.4
                        Layout.fillWidth: true
                        font.pointSize: 12
                        font.family: "Roboto Mono"
                    }
                }
                RowLayout {
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    spacing: 8
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    Label {
                        id: productCurrency
                        text: qsTr("Rp")
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        font.letterSpacing: 0.25
                        anchors.leftMargin: 0
                        anchors.bottomMargin: 0
                    }
                    Label {
                        id: productAmount
                        text: qsTr("1,234,567")
                        font.letterSpacing: 0.25
                        Layout.fillWidth: true
                        anchors.leftMargin: 0
                    }
                }
            }

            Image {
                id: imageCardPreview
                width: 64
                source: "qrc:/qtquickplugin/images/template_image.png"
                anchors.bottomMargin: 8
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 8
                anchors.topMargin: 8
                layer.enabled: true
                layer.effect: OpacityMask {
                    maskSource: Rectangle {
                        anchors.centerIn: parent
                        width: imageCardPreview.width
                        height: imageCardPreview.height
                        radius: 8
                    }
                }
            }
        }
    }
}
