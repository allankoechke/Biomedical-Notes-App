import QtQuick 2.0
import QtQuick.Layouts 1.3

import "../components"

Item {
    id: root

    Layout.fillWidth: true
    Layout.fillHeight: true

    Rectangle
    {
        height: 40
        width: parent.width
        anchors.top: parent.top
        anchors.left: parent.left
        //rotation: -90

        gradient: Gradient {
            GradientStop { position: 0.0; color: "#0DAAF8" }
            GradientStop { position: 1.0; color: "#F7058D" }
        }

    }

    ColumnLayout
    {
        spacing: 5
        anchors.centerIn: parent

        Rectangle
        {
            Layout.preferredWidth: kubme.width+10
            Layout.preferredHeight: 6; color: "white"
        }

        AppText
        {
            text: qsTr("THE BIOMEDICAL LIBRARY")
            size: 42
            fontIndex: 3
            color: "#3257ff"
        }

        Rectangle
        {
            width: kubme.width+10
            height: kubme.height+10
            color: "#fefefe"

            AppText
            {
                id: kubme
                text: qsTr("KENYATTA UNIVERSITY BIOMEDICAL ENGINEERING STUDENTS")
                size: 18
                fontIndex: 2
                anchors.centerIn: parent
                color: "black"
            }
        }

        Rectangle
        {
            Layout.preferredWidth: kubme.width+10
            Layout.preferredHeight: 300
            color: "#1A2B9F"

            ColumnLayout
            {
                anchors.fill: parent
                anchors.margins: 20
                spacing: 10

                Rectangle
                {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 50
                    width: parent.width*0.8
                    color: "white"

                    AppText
                    {
                        text: qsTr("LOGIN")
                        size: 20
                        fontIndex: 1
                        font.bold: true
                        anchors.centerIn: parent
                        color: "#010141"
                    }
                }

                LoginInputField
                {
                    placeholderText: qsTr("Username")
                    textIcon: "\uf118"
                }

                LoginInputField
                {
                    placeholderText: qsTr("Password")
                    textIcon: "\uf30d"
                    isPasswordInput: true
                }

                Rectangle
                {
                    Layout.alignment: Qt.AlignHCenter
                    width: 150; height: 50; radius: 5
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: "#0DAAF8" }
                        GradientStop { position: 1.0; color: "#F7058D" }
                    }

                    AppText
                    {
                        color: "white"
                        text: qsTr("Log in")
                        anchors.centerIn: parent
                        size: 25
                    }

                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked: mainStackLayoutIndex = 3
                    }
                }

                Item
                {
                    Layout.fillWidth: true
                    Layout.preferredHeight: txt.height

                    AppText
                    {
                        id: txt
                        text: qsTr("Don't have an account yet? ") + "<font 'color:white'><u>Create One</u></font>"
                        size: 15
                        anchors.centerIn: parent
                        color: "grey"
                        textFormat: AppText.StyledText
                    }

                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked: mainStackLayoutIndex = 2
                    }
                }
            }
        }
    }
}
