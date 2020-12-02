import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.3

StackView {
    property alias logoImage: logoImage
    property alias onboardingImage: onboardingImage
    property alias onboardingText1: onboardingText1
    property alias onboardingText2: onboardingText2
    property alias startButton: startButton

    initialItem: Page {
        id: page
        title: qsTr("Onboarding")

        ToolBar {
            id: toolBar

            height: 56
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0

            background: Rectangle {
                color: "transparent"
            }
            RowLayout {
                anchors.fill: parent

                Image {
                    id: logoImage
                    Layout.preferredHeight: 24
                    Layout.preferredWidth: 100
                    fillMode: Image.PreserveAspectFit
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.fillWidth: false
                    Layout.fillHeight: false
                    source: "https://via.placeholder.com/100x24.png"
                }
            }
        }

        StackView {
            id: contentView
            anchors.fill: parent
            z: -1

            Image {
                id: onboardingImage
                anchors.bottom: onboardingText1.top
                anchors.bottomMargin: 32
                anchors.topMargin: 32 + toolBar.height
                anchors.right: parent.right
                anchors.rightMargin: 64
                anchors.left: parent.left
                anchors.leftMargin: 64
                source: "https://via.placeholder.com/600x600.png"
                fillMode: Image.PreserveAspectFit
            }
            Text {
                id: onboardingText1
                text: qsTr("Onboarding text")
                anchors.bottom: onboardingText2.top
                anchors.bottomMargin: 4
                wrapMode: Text.WordWrap
                anchors.right: parent.right
                anchors.rightMargin: 72
                anchors.left: parent.left
                anchors.leftMargin: 16
                font.pointSize: 24
                font.family: "Work Sans"
                font.weight: Font.Bold
            }

            Text {
                id: onboardingText2
                color: "#99000000"
                text: qsTr("Onboarding text 2")
                anchors.bottom: startButton.top
                anchors.bottomMargin: 16
                wrapMode: Text.WordWrap
                anchors.right: parent.right
                anchors.rightMargin: 72
                anchors.left: parent.left
                anchors.leftMargin: 16
                font.pointSize: 16
                font.family: "WorkSans"
                font.weight: Font.Normal
            }

            RoundButton {
                id: startButton
                highlighted: true
                Material.foreground: Material.primary
                text: qsTr("Get Started")
                anchors.right: parent.right
                anchors.rightMargin: 8
                anchors.left: parent.left
                anchors.leftMargin: 8
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 16
                font.capitalization: Font.MixedCase
                font.family: "Work Sans"
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

