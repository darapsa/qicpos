import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12

Page {
    id: page
    title: qsTr("Today")

    property alias menuButton: menuButton
    property alias profileButton: profileButton
    property alias contentView: contentView

    header: ToolBar {
        background: Rectangle {
            color: "transparent"
        }
        RowLayout {
            anchors.fill: parent
            spacing: 0
            ToolButton {
                id: menuButton
                icon.name: "menu-button"
                icon.source: "../icons/menu-24px.svg"
                highlighted: true
            }
            ToolButton {
                id: profileButton
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                icon.name: "profile-button"
                icon.source: "../icons/profile-24px.svg"
                highlighted: true
            }
        }
    }

    StackView {
        id: contentView
        anchors.fill: parent

        Text {
            id: pageTitle
            text: contentView.currentItem.title
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 20
            anchors.leftMargin: 16
            anchors.topMargin: 16
            font.weight: Font.Medium
            font.family: "Roboto Mono"
        }
    }
}
/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:7}
}
##^##*/

