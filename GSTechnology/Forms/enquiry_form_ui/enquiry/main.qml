import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import "personalEnquiryForm"
import "personalEnquiryForm/component"
import "educationalEnquiryForm"
import "financialEnquiryForm"
import "formHeader"
import "gstechEmployeeForm"
import "gstechStudentForm"

ApplicationWindow {
    width: Screen.width - 450
    height: Screen.height - 300
    visible: true
    //flags: Qt.FramelessWindowHint | Qt.Window
    color: "#185487"
    //visibility: Qt.WindowFullScreen // << the solution
    title: qsTr("GSTechnology Enquiry")
    x: Screen.width / 2
    y: Screen.height / 2 - height / 2

    header: GSTechnologyFormHeader {
            id: gstech_header_rect_id
    }

    PersonalInfo {
        id: personal_info_id
        anchors.top: gstech_header_rect_id.top
        anchors.topMargin: 200
        anchors.left: parent.left
        anchors.leftMargin: 70

        TapHandler {
            onTapped: {
                console.log("Personal Information window open")
                personal_information_id.visible = true
            }
        }
    }

    Rectangle {
        width: 150
        height: 2
        color: "red"
        anchors.left: personal_info_id.right
        anchors.verticalCenter: personal_info_id.verticalCenter
    }

    EducationalInfo {
        id: educational_info_id
        anchors.top: gstech_header_rect_id.top
        anchors.topMargin: 200
        anchors.left: personal_info_id.right
        anchors.leftMargin: 150

        TapHandler {
            onTapped: {
                console.log("Educational Information window open")
            }
        }
    }

    Rectangle {
        width: 150
        height: 2
        color: "red"
        anchors.left: educational_info_id.right
        anchors.verticalCenter: educational_info_id.verticalCenter
    }

    FinancialInfo {
        id: financial_info_id
        anchors.top: gstech_header_rect_id.top
        anchors.topMargin: 200
        anchors.left: educational_info_id.right
        anchors.leftMargin: 150

        TapHandler {
            onTapped: {
                console.log("Financial Information window open")
            }
        }
    }

    GSTechnologyEmployeeRecordForm {
        id: gstech_employee_recod_info_id
        anchors.top: personal_info_id.bottom
        anchors.topMargin: 100
        anchors.left: personal_info_id.right

        TapHandler {
            onTapped: {
                console.log("GSTechnology Employee Record Form Information window open")
            }
        }
    }

    GSTechnologyStudentRecordForm {
        id: gstech_student_recod_info_id
        anchors.top: personal_info_id.bottom
        anchors.topMargin: 100
        anchors.left: gstech_employee_recod_info_id.right
        anchors.leftMargin: 150

        TapHandler {
            onTapped: {
                console.log("GSTechnology Student Record Form Information window open")
            }
        }
    }

    PersonalInformation {
        id: personal_information_id
        visible: false
    }
}
