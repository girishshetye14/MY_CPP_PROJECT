import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Rectangle {

    width: gstech_logo_img_id.width
    height: gstech_logo_img_id.height
    color: "transparent"

    Image {
        id: gstech_logo_img_id
        source: "qrc:/../images/GSTechnologyLogo.jpg"
        fillMode: Image.PreserveAspectFit
        smooth: true
        anchors.fill: parent
        width: 150
        height: 150

        layer.enabled: true // Enable layering for effects
        layer.effect: OpacityMask {
            maskSource: circleMask // Reference the mask source
        }
    }

    // Define the circular mask
        Rectangle {
            id: circleMask
            width: gstech_logo_img_id.width
            height: gstech_logo_img_id.height
            radius: width / 2 // Makes the rectangle a perfect circle
            visible: false // The mask itself should not be visible
        }
}
