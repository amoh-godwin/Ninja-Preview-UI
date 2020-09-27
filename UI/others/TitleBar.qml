import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    Layout.topMargin: 6
    Layout.fillWidth: true
    Layout.preferredHeight: 36
    color: "#191b1f"

    RowLayout {
        anchors.fill: parent

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "transparent"

            RowLayout {

                height: parent.height

                Image {
                    Layout.leftMargin: 15
                    Layout.alignment: Layout.Center
                    sourceSize.width: 18
                    sourceSize.height: 18
                    source: "qrc:///icons/logo.png"
                }

                Text {
                    Layout.leftMargin: 15
                    width: 200
                    font {
                        family: "Segoe UI Semilight"
                        pixelSize: 12
                    }
                    elide: Text.ElideMiddle
                    text: title + "  - "
                    color: "white"
                }

                Text {
                    font {
                        family: "Segoe UI Semilight"
                        pixelSize: 12
                    }
                    text: "Ninja-Preview (" + qt_version + ")"
                    color: "white"
                }


            }

            MouseArea {
                anchors.fill: parent

                onPressed: {
                    prevX = mouseX
                    prevY = mouseY
                }

                onMouseXChanged: {
                    var dx = mouseX - prevX
                    mainWindow.setX(mainWindow.x + dx)
                }

                onMouseYChanged: {
                    var dy = mouseY - prevY
                    mainWindow.setY(mainWindow.y + dy)
                }

            }

        }

        Row {
            Layout.alignment: Qt.AlignRight
            Layout.fillHeight: true

            NavButton {
                height: parent.height
                text: "\uf5b0"

                onClicked: mainWindow.showMinimized()

            }

            NavButton {
                height: parent.height
                text: "\uF5af"

            }

            NavButton {
                height: parent.height
                text: "\uF5ad"

                onClicked: mainWindow.close()
            }


        }

    }

}
