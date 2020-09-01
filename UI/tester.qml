import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: main__window
    visible: true
    width: 800
    height: 640
    title: qsTr("Window")
    color: "dodgerblue"
    flags: Qt.Window

    menuBar: Rectangle {
        width: 200
        height: 24
        color: "transparent"

        Component.onCompleted: {
            console.log(parent)
        }

    }

    header: Rectangle {
        width: 400
        height: 48
        color: "brown"

        Component.onCompleted: {
            console.log(parent)
        }

    }

    Rectangle {
        width: parent.width
        height: parent.height
        objectName: "Something"
    Rectangle {
        width: parent.width
        height: parent.height

        Component.onCompleted: {
            console.log('cont: ', parent)
        }

        }
    }


    footer: Rectangle {
        width: 200
        height: 38

        Component.onCompleted: {
            console.log(parent)
        }

    }

}
