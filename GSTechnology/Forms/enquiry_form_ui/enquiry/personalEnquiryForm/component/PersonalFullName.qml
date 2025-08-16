import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15


Rectangle {
id: personal_full_name_rect_id
width: parent.width
height: full_name_rect_id.height
anchors.top: personal_information_id.bottom
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
        text: qsTr("Full Name")
        font.family: "Segoe UI"
        font.pixelSize: 22
        font.bold: true
        color: "#000000"
        anchors.fill: parent
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
    }
}


Row {
    anchors.left: full_name_rect_id.left
    anchors.leftMargin: 250
    spacing: 25
Column {
    spacing: 15
    height: 200
    anchors.verticalCenter: parent.verticalCenter

    Rectangle {
        width: 200
        height: 50
        color: "transparent"
        TextField {
              id: first_name_text_field_id
              anchors.fill: parent
              onAccepted: console.log("First Name entered:", first_name_text_field_id.text)
              background: Rectangle {
                  width: 200
                  height: 50
                  radius: 5
                  border.color: "grey"
              }
          }
    }

    Rectangle {
        width: 200
        height: 5
        color: "transparent"
        Text {
            text: qsTr("First Name")
            font.family: "Segoe UI"
            font.pixelSize: 12
            font.bold: true
            color: "#000000"
            anchors.fill: parent
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }
    }
}

Column {
    spacing: 15
    height: 200
    anchors.verticalCenter: parent.verticalCenter

    Rectangle {
        width: 200
        height: 50
        color: "transparent"
        TextField {
              id: middle_name_text_field_id
              anchors.fill: parent
              onAccepted: console.log("First Name entered:", middle_name_text_field_id.text)
              background: Rectangle {
                  width: 200
                  height: 50
                  radius: 5
                  border.color: "grey"
              }
          }
    }

    Rectangle {
        width: 200
        height: 5
        color: "transparent"
        Text {
            text: qsTr("Middle Name")
            font.family: "Segoe UI"
            font.pixelSize: 12
            font.bold: true
            color: "#000000"
            anchors.fill: parent
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }
    }
}

Column {
    spacing: 15
    height: 200
    anchors.verticalCenter: parent.verticalCenter

    Rectangle {
        width: 200
        height: 50
        color: "transparent"
        TextField {
              id: last_name_text_field_id
              anchors.fill: parent
              onAccepted: console.log("First Name entered:", last_name_text_field_id.text)
              background: Rectangle {
                  width: 200
                  height: 50
                  radius: 5
                  border.color: "grey"
              }
          }
    }

    Rectangle {
        width: 200
        height: 5
        color: "transparent"
        Text {
            text: qsTr("Last Name")
            font.family: "Segoe UI"
            font.pixelSize: 12
            font.bold: true
            color: "#000000"
            anchors.fill: parent
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }
    }
}

}

}
