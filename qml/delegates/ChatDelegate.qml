import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3

import "../components"

Rectangle {
    id: root
    height: content.height+110
    border.color: "#f3f6f8"
    border.width: 1
    color: "white"
    radius: 5

    property bool isQuerryPending
    property int chatLikes: 0
    property int chatComments: 0
    property string datePosted
    property string chatContents: ""

    signal likeClicked()
    signal commentClicked()
    signal flagClicked()
    signal markSolvedClicked()

    ColumnLayout
    {
        anchors.fill: parent
        anchors.leftMargin: 20
        anchors.rightMargin: 20
        anchors.topMargin: 5
        anchors.bottomMargin: 5

        spacing: 8

        Item{
            Layout.fillWidth: true
            Layout.preferredHeight: 40

            RowLayout
            {
                anchors.fill: parent
                spacing: 5

                Item
                {
                    Layout.fillHeight: true
                    Layout.preferredWidth: 20

                    AppIcon
                    {
                        anchors.centerIn: parent
                        size: 18; opacity: 0.7
                        color: "#535353"
                        icon: "\uf2bd"
                    }
                }

                AppText
                {
                    Layout.alignment: Qt.AlignVCenter

                    color: "black"
                    font.bold: true
                    font.pixelSize: 15
                    text: qsTr("John Philips")
                }

                AppText
                {
                    Layout.alignment: Qt.AlignVCenter
                    Layout.leftMargin: 20

                    color: "#535353"
                    font.pixelSize: 12
                    text: Qt.formatDateTime(datePosted, "MMM dd, yyyy")
                }

                Item{
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }

                Item
                {
                    visible: !isQuerryPending

                    Layout.fillHeight: true
                    Layout.minimumWidth: 100

                    RowLayout
                    {
                        anchors.fill: parent
                        spacing: 5

                        AppIcon
                        {
                            Layout.alignment: Qt.AlignVCenter|Qt.AlignLeft
                            size: 18
                            color: "green"
                            icon: "\uf560"
                        }

                        AppText
                        {
                            Layout.alignment: Qt.AlignVCenter

                            color: "grey"
                            font.pixelSize: 15
                            text: qsTr("Solved")
                        }
                    }
                }

                Item{
                    Layout.fillHeight: true
                    Layout.preferredWidth: 20

                    AppIcon
                    {
                        anchors.centerIn: parent
                        size: 18
                        color: "#535353"
                        icon: "\uf142"
                    }
                }
            }

        }

        Rectangle
        {
            Layout.fillWidth: true
            Layout.preferredHeight: 1
            color: "grey"
            opacity: 0.3
        }

        Label
        {
            id: content
            text: chatContents
            Layout.fillWidth: true
            wrapMode: Label.WordWrap
            font.pixelSize: 14
            color: "black"
            textFormat: Label.StyledText

        }

        Rectangle
        {
            Layout.fillWidth: true
            Layout.preferredHeight: 1
            color: "grey"
            opacity: 0.3
        }

        Item{
            id: bottomBar

            Layout.fillWidth: true
            Layout.preferredHeight: 35

            RowLayout
            {
                anchors.fill: parent
                spacing: 10

                AppImage
                {
                    statusCount: chatLikes
                    statusIcon: "\uf164"
                    statusLabel: qsTr("Like")
                    onClicked: root.likeClicked()
                }

                AppImage
                {
                    statusCount: chatComments
                    statusIcon: "\uf27a"
                    statusLabel: qsTr("Comment")
                    onClicked: root.commentClicked()
                }

                Item{
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }

                AppImage
                {
                    statusIcon: "\uf024"
                    statusLabel: qsTr("Flag")
                    onClicked: root.flagClicked()
                }

                AppImage
                {
                    visible: isQuerryPending
                    statusIcon: "\uf560"
                    statusLabel: qsTr("Mark as Solved")
                    onClicked: root.markSolvedClicked()
                }
            }
        }
    }
}
