import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Rectangle{
    width: 250
    height: educational_information_text_id.contentHeight + 100
    color: "lightGrey"
    radius: 20
    border.color: "yellow"
    border.width: 1.5

    Text {
        id: educational_information_text_id
        text: qsTr("Educational Information")
        font.family: "Segoe UI"
        font.pixelSize: 20
        font.bold: true
        font.italic: false
        font.capitalization: Font.AllUppercase
        wrapMode: Text.WordWrap
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}

