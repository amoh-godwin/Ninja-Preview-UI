import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    Layout.fillWidth: true
    Layout.preferredHeight: 37
    color: "lightgrey"

    Rectangle {
        anchors.bottom: parent.bottom
        width: parent.width
        height: 1
        color: "lightgrey"
    }

    RowLayout {
        anchors.fill: parent
        anchors.bottomMargin: 1
        spacing: 1

        Rectangle {
            Layout.preferredWidth: 200
            Layout.fillHeight: true
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }



    }

}
