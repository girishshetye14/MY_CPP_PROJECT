import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15


Rectangle {
    id: personal_full_name_rect_id
    width: parent.width
    height: full_name_rect_id.height
    anchors.top: personal_mob_number_id.bottom
    anchors.topMargin: 30
    color: "#5cffdc"

    Rectangle {
        id:  full_name_rect_id
        width: personal_full_name_rect_id.width
        height: full_name_text_id.contentHeight + 20
        anchors.left: parent.left
        anchors.leftMargin: 75
        color: "transparent"

        Text {
            id: full_name_text_id
            text: qsTr("E-Mail")
            font.family: "Segoe UI"
            font.pixelSize: 22
            font.bold: true
            color: "#000000"
            anchors.fill: parent
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }
    }
}
