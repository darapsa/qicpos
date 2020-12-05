import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12
import "pages"

ApplicationWindow {
    id: window
    width: 360
    height: 640
    visible: true
    title: {
        text: qsTr("namatoko seller")
    }

    OnboardingForm {
        id: pageView
        anchors.fill: parent
        startButton.onClicked: pageView.push("pages/GetStarted.qml")
        onboardingText1.text: qsTr("Everything you need to sell online.")
        onboardingText2.text: qsTr("Set up your store in minutes and bring your brand to life")
        disclaimerText.text: qsTr("By tapping 'Get started' and using this app, you're agreeing to our terms of service and privacy policy")
    } 
}
