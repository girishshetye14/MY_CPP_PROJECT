import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: gstech_information_text_id.contentWidth
    height: gstech_information_text_id.contentHeight
    color: "transparent"
    anchors.verticalCenter: gstech_logo_rect_id.verticalCenter

    Text {
        id: gstech_information_text_id
        text: qsTr("G.S Technology Pvt Ltd")
        font.family: "Segoe UI"
        font.pixelSize: 48
        font.weight: Font.DemiBold
        font.bold: true
        font.italic: false
        font.underline: true
        color: "#BA8E23"
        font.capitalization: Font.AllUppercase
        wrapMode: Text.WordWrap
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}
