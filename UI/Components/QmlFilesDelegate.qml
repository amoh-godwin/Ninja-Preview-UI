import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "../others" as Other

Component {
    Rectangle {
        id: delebase
        width: parent.width
        height: 48
        color: index % 2 > 0 ? "white" : "#f1f1f1"

        RowLayout {
            width: parent.width - 8
            height: 40
            anchors.verticalCenter: parent.verticalCenter
            spacing: 0

            Text {
                padding: 8
                Layout.fillWidth: true
                text: name
                elide: Text.ElideMiddle
                font {
                    family: "Segoe UI Semilight"
                    pixelSize: 14
                }
            }

            Other.CustomButton {
                text: "\uf11c"

                onClicked: runInPhoneFrame(name)
            }

            Other.CustomButton {
                text: "\uF40a"

                onClicked: runFile(name)

            }

            Other.CustomButton {
                text: "\uF374"

                onClicked: removeFromView(index)

            }

        }


    }
}
