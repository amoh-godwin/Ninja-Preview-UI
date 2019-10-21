import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "../others" as Other

ApplicationWindow {
    id: main__window
    visible: true
    width: 360
    height: 640
    title: qsTr("Window")
    color: "transparent"
    flags: Qt.Window | Qt.FramelessWindowHint
    objectName: "MainWindowItem"

    background: Rectangle {
        id: bg
        anchors.fill: parent
        color: "transparent"

        property string curr_device: "huawei_P9"

        RowLayout {
            anchors.fill: parent
            spacing:  12

            Rectangle {
                id: im_g_pa_re_nt
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "transparent"

                Image {
                    width: parent.width
                    height: parent.height
                    source: "../images/phone-bg.png"
                }

                Rectangle {
                    id: to_p_b_a_r
                    width: parent.width
                    height: 36
                    color: "transparent"

                    property int prevX
                    property int prevY

                    MouseArea {
                        anchors.fill: parent

                        onPressed: {
                            to_p_b_a_r.prevX = mouseX
                            to_p_b_a_r.prevY = mouseY
                        }

                        onMouseXChanged: {
                            var dx = mouseX - to_p_b_a_r.prevX
                            main__window.setX(main__window.x + dx)
                        }

                        onMouseYChanged: {
                            var dy = mouseY - to_p_b_a_r.prevY
                            main__window.setY(main__window.y + dy)
                        }

                    }

                }

            }

            Rectangle {
                Layout.preferredWidth: 48
                Layout.fillHeight: true
                color: "black"

                ToolBar {
                    width: parent.width
                    height: parent.height

                    background: Rectangle {
                        color: "#191b1f"
                    }

                    ColumnLayout {
                        width: parent.width
                        //height: parent.height

                        Other.NavButton {
                            //Layout.alignment: Layout.Top
                            //Layout.topMargin: 0
                            text: "\uF415"
                            enabled: bg.curr_device == 'huawei_P9'
                        }

                        Other.NavButton {
                            //Layout.alignment: Layout.Top
                            //Layout.topMargin: 0
                            text: "\uF415"
                            enabled: bg.curr_device == 'huawei_Mate2'
                        }

                        Other.NavButton {
                            //Layout.alignment: Layout.Top
                            //Layout.topMargin: 0
                            text: "\uF415"
                            enabled: bg.curr_device == 'SamsungGalaxyTab2'
                        }

                    }

                }
            }


        }



    }

    Rectangle {
        id: ff__
        anchors.fill: parent
        anchors.topMargin: 36
        anchors.bottomMargin: 36
        anchors.leftMargin: 24
        anchors.rightMargin: 84
        color: "black"

        ColumnLayout {
            anchors.fill: parent
            clip: true
            spacing: 0

            Rectangle {// menubar
                id: _hidd_me_nu_bar
                Layout.fillWidth: true
                Layout.preferredHeight: (children.length > 0) ? children[0].height : 48
                visible: (children.length > 0)
                color: "black"
                clip: true
                objectName: "menuBarContainerItem"


            }

            Rectangle {// header
                id: _hidd_he_ad_er
                Layout.fillWidth: true
                Layout.preferredHeight: (children.length > 0) ? children[0].height : 48
                visible: (children.length > 0)
                color: "black"
                clip: true
                objectName: "headerItem"


            }

            Rectangle {// contentItem
                id: _hidd_co_nt_entItem
                Layout.fillWidth: true
                Layout.fillHeight: true
                visible: (children.length > 0)
                color: "black"
                clip: true
                objectName: "ContentItem"


            }

            Rectangle {// footer
                id: _hidd_fo_ot_er
                Layout.fillWidth: true
                Layout.preferredHeight: (children.length > 0) ? children[0].height : 48
                visible: (children.length > 0)
                clip: true
                color: "black"
                objectName: "footerItem"


            }

        }
    }

}
