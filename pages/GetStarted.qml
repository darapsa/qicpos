import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12

GetStartedForm {
	objectName: "getstarted"
    backButton.onClicked: pageView.pop()
}
