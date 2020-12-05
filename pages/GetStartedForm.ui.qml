import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12

Page {
    id: pageView
    property alias backButton: backButton
    header: ToolBar {
        background: Rectangle {
            color: "transparent"
        }
        RowLayout {
            ToolButton {
                id: backButton
                display: AbstractButton.IconOnly
                highlighted: true
                icon.name: "back-button"
                icon.source: "../icons/arrow-back-24px.svg"
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

