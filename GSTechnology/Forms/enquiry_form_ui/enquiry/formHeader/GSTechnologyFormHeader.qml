import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Rectangle {
        id: gstech_header_rect_id
        width: parent.width
        height: 200 //implicitHeight
        // anchors.top: parent.top
        // anchors.topMargin: 40
        color: "#185487"

        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 50

            GSTechnologyLogoHeader {
                id: gstech_logo_rect_id
            }

            GSTechnologyTextHeader {

            }
        }
    }
