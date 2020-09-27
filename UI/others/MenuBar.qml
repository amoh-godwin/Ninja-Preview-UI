import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15


Rectangle {
    Layout.fillWidth: true
    Layout.preferredHeight: 36
    color: "#191b1f"

    MenuBar {
        height: parent.height
        Menu {
            title: qsTr("File")
            Action { text: qsTr("&Open") }
        }
        Menu {
            title: qsTr("Edit")
            Action { text: qsTr("&Open") }
        }

        delegate: MenuBarItem {
            id: menubarItem
            background: Rectangle {
                implicitHeight: 36
                color: "#191b1f"
            }

            contentItem: Text {
                text: menubarItem.text
                color: "white"
            }
        }

        background: Rectangle {
            color: 'transparent'
        }

    }

}
