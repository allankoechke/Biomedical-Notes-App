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
            Layout.preferredWidth: 400
            Layout.preferredHeight: 600
            color: "#1A2B9F"

            ColumnLayout
            {
                anchors.fill: parent
                anchors.margins: 20
                spacing: 10

                AppText
                {
                    Layout.preferredHeight: 40
                    verticalAlignment: AppText.AlignVCenter
                    text: qsTr("Create a new account")
                    size: 20
                    fontIndex: 1
                    font.bold: true
                    color: "white"
                    Layout.alignment: Qt.AlignHCenter
                }

                LoginInputField
                {
                    placeholderText: qsTr("Full name")
                    textIcon: "\uf007"
                }

                LoginInputField
                {
                    placeholderText: qsTr("Reg. No. JXX/XXXX/XXXX")
                    textIcon: "\uf2c1"
                }

                LoginInputField
                {
                    placeholderText: qsTr("Email (example@mail.com)")
                    textIcon: "\uf0e0"
                }

                LoginInputField
                {
                    placeholderText: qsTr("Current year (eg. 4)")
                    textIcon: "\uf19c"
                }

                LoginInputField
                {
                    placeholderText: qsTr("Password")
                    textIcon: "\uf084"
                    isPasswordInput: true
                }

                LoginInputField
                {
                    placeholderText: qsTr("Confirm password")
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
                        text: qsTr("Sign up")
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
                        text: qsTr("Already have an account? ") + "<font 'color:white'><u>Sign in</u></font>"
                        size: 15
                        anchors.centerIn: parent
                        color: "grey"
                        textFormat: AppText.StyledText
                    }

                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked: mainStackLayoutIndex = 1
                    }
                }
            }
        }
    }
}
