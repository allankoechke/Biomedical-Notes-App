import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

import "../components"

Drawer {
    width: 200
    height: mainQmlApp.height
    modal: false
    edge: Qt.LeftEdge
    closePolicy: Drawer.NoAutoClose

    Timer
    {
        id: closeMenuDrawer
        running: false
        interval: 300
        repeat: false

        onTriggered: menuDrawer.close()
    }

    contentItem: ColumnLayout
    {
        anchors.fill: parent
        spacing: 0

        Rectangle
        {
            Layout.fillWidth: true
            Layout.preferredHeight: 80
            color: "#011327"

            AppIcon
            {
                size: 25
                color: "white"
                icon: "\uf00d"
                anchors.centerIn: parent
            }

            MouseArea
            {
                anchors.fill: parent
                onClicked: menuDrawer.close()
            }
        }

        Rectangle
        {
            color: "#010141"
            Layout.fillHeight: true
            Layout.fillWidth: true

            ColumnLayout
            {
                anchors.fill: parent
                spacing: 2

                AppText
                {
                    Layout.fillWidth: true
                    Layout.leftMargin: 20
                    Layout.topMargin: 20
                    Layout.bottomMargin: 20

                    text: "BIOMEDICAL<br>ENGINEERING"
                    textFormat: AppText.StyledText
                    font.bold: true
                    color: "#a8adb3"
                    font.pixelSize: 20
                }

                MenuDrawerItem
                {
                    isMenuButtonSelected: currentMenuIndex===0
                    menuButtonIcon: "\uf80a"
                    menuButtonLabel: "HOME"

                    onClicked: {
                        if(currentMenuIndex!==0) currentMenuIndex = 0
                           closeMenuDrawer.running = true;
                    }
                }

                MenuDrawerItem
                {
                    isMenuButtonSelected: currentMenuIndex===1
                    menuButtonIcon: "\uf0a1"
                    menuButtonLabel: "NOTICE BOARD"
                    notificationStatus: true

                    onClicked: {
                        if(currentMenuIndex!==1) currentMenuIndex = 1
                        closeMenuDrawer.running = true;
                    }
                }

                MenuDrawerItem
                {
                    isMenuButtonSelected: currentMenuIndex===2
                    menuButtonIcon: "\uf4b6"
                    menuButtonLabel: "SOCIAL FEED"

                    onClicked: {
                        if(currentMenuIndex!==2) currentMenuIndex = 2
                        closeMenuDrawer.running = true;
                    }
                }

                MenuDrawerItem
                {
                    isMenuButtonSelected: currentMenuIndex===3
                    menuButtonIcon: "\uf5db"
                    menuButtonLabel: "LIBRARY"

                    onClicked: {
                        if(currentMenuIndex!==3) currentMenuIndex = 3
                        closeMenuDrawer.running = true;
                    }
                }

                MenuDrawerItem
                {
                    isMenuButtonSelected: currentMenuIndex===4
                    menuButtonIcon: "\uf02e"
                    menuButtonLabel: "FAVOURITES"

                    onClicked: {
                        if(currentMenuIndex!==4) currentMenuIndex = 4
                        closeMenuDrawer.running = true;
                    }
                }

                MenuDrawerItem
                {
                    isMenuButtonSelected: currentMenuIndex===5
                    menuButtonIcon: "\uf013"
                    menuButtonLabel: "SETTINGS"

                    onClicked: {
                        if(currentMenuIndex!==5) currentMenuIndex = 5
                        closeMenuDrawer.running = true;
                    }
                }

                Item{
                    Layout.fillHeight: true
                    width: 2
                }
            }
        }
    }
}
