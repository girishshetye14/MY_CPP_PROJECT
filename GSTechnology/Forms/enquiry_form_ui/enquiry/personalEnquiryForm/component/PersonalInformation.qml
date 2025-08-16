import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: parent.width
    height: parent.height
    anchors.top: gstech_header_rect_id.bottom
    color: "lightgrey"

    Rectangle{
        id: personal_information_id
        width: parent.width
        height: personal_information_text_id.contentHeight + 50
        color: "lightblue"

        Text {
            id: personal_information_text_id
            text: qsTr("Personal Information")
            font.family: "Segoe UI"
            font.pixelSize: 28
            font.bold: true
            font.italic: false
            font.capitalization: Font.AllUppercase
            wrapMode: Text.WordWrap
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    PersonalFullName {
        id: personal_full_name_id
    }

    PersonalGender {
        id: personal_gender_id
    }

    PersonalDOB {
        id: personal_dob_id
    }

    PersonalMobileNumber {
        id: personal_mob_number_id
    }

    PersonalEmailId {
        id: personal_email_id
    }
}
