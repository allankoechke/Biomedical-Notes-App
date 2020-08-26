import QtQuick 2.0
import QtQuick.Layouts 1.3

import "../components"

Item {
    id: root

    Layout.fillWidth: true
    Layout.fillHeight: true

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

                AppText
                {
                    Layout.preferredHeight: 40
                    Layout.alignment: Qt.AlignHCenter
                    verticalAlignment: AppText.AlignVCenter
                    text: qsTr("Sign into your account")
                    size: 25
                    fontIndex: 1
                    font.bold: true
                    color: "white"
                }


                LoginInputField
                {
                    placeholderText: qsTr("Email (example@mail.com)")
                    textIcon: "\uf0e0"
                }

                LoginInputField
                {
                    placeholderText: qsTr("Password")
                    textIcon: "\uf084"
                    isPasswordInput: true
                }

                Rectangle
                {
                    Layout.alignment: Qt.AlignHCenter
                    width: 150; height: 50; radius: 5
                    color: "#0DAAF8"

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
