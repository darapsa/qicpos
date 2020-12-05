import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12

Page {
    id: pageView
    property alias backButton: backButton
    header: ToolBar {
        background: Rectangle {
            color: "#FAFFFFFF"
        }
        RowLayout {
            ToolButton {
                id: backButton
                highlighted: true
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

