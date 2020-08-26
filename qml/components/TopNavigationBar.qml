import QtQuick 2.0
import QtQuick.Layouts 1.3

import "../components"

Rectangle {
    Layout.fillWidth: true
    Layout.preferredHeight: 80
    color: "#00264d"

    property bool isMenuDrawerOpen: false

    Connections
    {
        target: menuDrawer

        function onClosed()
        {
            isMenuDrawerOpen =  false;
        }

        function onOpened()
        {
            isMenuDrawerOpen = true;
        }
    }

    Rectangle
    {
        id: menu
        height: parent.height
        width: height+20
        color: "#011327"
        visible: !isMenuDrawerOpen

        AppIcon
        {
            size: 25
            color: "white"
            icon: "\uf0c9"
            anchors.centerIn: parent
        }

        MouseArea
        {
            anchors.fill: parent
            onClicked: menuDrawer.open();
        }
    }

    RowLayout
    {
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: menu.right
        anchors.margins: 20

        Rectangle
        {
            border{
                width: 1
                color: "white"
            }
            color: "transparent"
            Layout.preferredHeight: 40
            Layout.preferredWidth: 300
            Layout.leftMargin: 20

            RowLayout
            {
                anchors.fill: parent
                spacing: 0

                TextInput
                {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.leftMargin: 10
                    verticalAlignment: TextInput.AlignVCenter
                    font.pixelSize: 15
                    color: "white"

                    Text{
                        color: "grey"
                        opacity: 0.8
                        font.pixelSize: 14
                        visible: parent.text===""
                        text: qsTr("SEARCH")
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }

                Rectangle
                {
                    Layout.fillHeight: true
                    Layout.preferredWidth: height+5
                    Layout.margins: 1
                    color: Qt.darker("#00264d")

                    AppIcon
                    {
                        anchors.centerIn: parent
                        color: "white"
                        size: 18
                        icon: "\uf002"
                    }
                }
            }
        }

        Item{
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Item
        {
            Layout.preferredHeight: 40
            Layout.preferredWidth: 200

            RowLayout
            {
                anchors.fill: parent
                spacing: 5

                AppText
                {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    verticalAlignment: AppText.AlignVCenter
                    horizontalAlignment: AppText.AlignRight
                    text: qsTr("MY NAME")
                    color: "white"
                    font.pixelSize: 15
                    font.bold: true
                    Layout.alignment: Qt.AlignVCenter|Qt.AlignLeft
                }

                Item
                {
                    Layout.fillHeight: true
                    Layout.preferredWidth: 55

                    RowLayout
                    {
                        spacing: 5
                        anchors.fill: parent

                        AppIcon
                        {
                            size: 25
                            icon: "\uf2bd"
                            color: "white"
                            Layout.alignment: Qt.AlignVCenter|Qt.AlignRight
                        }

                        AppIcon
                        {
                            size: 20
                            icon: "\uf0d7"
                            color: "white"
                            Layout.alignment: Qt.AlignVCenter|Qt.AlignRight
                        }
                    }
                }
            }
        }
    }
}
