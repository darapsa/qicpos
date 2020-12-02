import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: window
    width: 360
    height: 640
    visible: true

    OnboardingForm {
        id: pageView
        anchors.fill: parent
        onboardingText1.text: qsTr("Everything you need to sell online.")
        onboardingText2.text: qsTr("Set up your store in minutes and bring your brand to life")
    }
}
