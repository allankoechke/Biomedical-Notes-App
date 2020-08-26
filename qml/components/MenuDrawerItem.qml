import QtQuick 2.0
import QtQuick.Layouts 1.2
import "../components"

Item {
    id: root

    Layout.fillWidth: true
    Layout.preferredHeight: 40
    Layout.leftMargin: 15
    Layout.rightMargin: 5

    property bool isMenuButtonSelected: false
    property string menuButtonIcon
    property string menuButtonLabel: ""

    property bool notificationStatus: false
    property string notificationColor: "green"
    property int notificationLabel: 0

    signal clicked()

    RowLayout
    {
        anchors.fill: parent
        spacing: 5

        Item
        {
            Layout.fillHeight: true
            Layout.preferredWidth: height

            AppIcon
            {
                anchors.centerIn: parent
                color: isMenuButtonSelected? "#3256ff":"#a8adb3"
                icon: menuButtonIcon
                size: isMenuButtonSelected? 25:20
            }
        }

        AppText
        {
            Layout.fillHeight: true
            Layout.fillWidth: true
            verticalAlignment: AppText.AlignVCenter
            horizontalAlignment: AppText.AlignLeft
            color: isMenuButtonSelected? "#3256ff":"white"
            font.pixelSize: isMenuButtonSelected? 18:14
            text: menuButtonLabel
        }

        Rectangle
        {
            color: notificationColor
            width: 25; height: width; radius: height/2
            Layout.alignment: Qt.AlignVCenter
            visible: notificationStatus & !isMenuButtonSelected

            AppText
            {
                size: 10
                color: "white"
                anchors.centerIn: parent
                text: notificationLabel.toString()
            }
        }
    }

    MouseArea
    {
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
