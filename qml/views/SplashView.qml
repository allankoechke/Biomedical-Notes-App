import QtQuick 2.2
import QtQuick.Layouts 1.3

import "../components"

Item {
    id: root

    Layout.fillHeight: true
    Layout.fillWidth: true

    ColumnLayout
    {
        spacing: 10
        anchors.centerIn: parent

        AppText
        {
            text: qsTr("THE BIOMEDICAL LIBRARY")
            size: 70
            fontIndex: 3
            color: "white"
        }

        Rectangle
        {
            width: kubme.width+10
            height: kubme.height+10
            color: "white"

            AppText
            {
                id: kubme
                text: qsTr("KENYATTA UNIVERSITY BIOMEDICAL ENGINEERING STUDENTS")
                size: 30
                fontIndex: 2
                anchors.centerIn: parent
                color: "black"
            }
        }

        AppText
        {
            color: "white"
            size: 13
            Layout.maximumWidth: kubme.width+20
            wrapMode: AppText.WordWrap
            text: qsTr("Appropriate training for hospital technicians and simpele equipment for hospital workshops would improve the situation easily. We hope that this application can be a little support to all Biomedical Engineers & Technicians both in studies and practice.\n")
        }

        AppText
        {
            color: "white"
            text: qsTr("Here you'll find:")
            Layout.fillWidth: true
            horizontalAlignment: AppText.AlignLeft
        }

        AppText
        {
            color: "white"
            text: qsTr("DOCUMENTS ABOUT BIOMEDICAL TECHNOLOGY")
            Layout.fillWidth: true
            horizontalAlignment: AppText.AlignHCenter
        }

        AppText
        {
            color: "white"
            text: qsTr("USER AND SERVICE MANUALS")
            Layout.fillWidth: true
            horizontalAlignment: AppText.AlignHCenter
        }

        AppText
        {
            color: "white"
            text: qsTr("TRAINING COURSES")
            Layout.fillWidth: true
            horizontalAlignment: AppText.AlignHCenter
        }

        AppText
        {
            color: "white"
            text: qsTr("PAST PAPERS")
            Layout.fillWidth: true
            horizontalAlignment: AppText.AlignHCenter
        }

        Rectangle
        {
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: 50
            width: 150; height: 60; radius: height/2
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#0DAAF8" }
                GradientStop { position: 1.0; color: "#F7058D" }
            }

            AppText
            {
                color: "white"
                text: qsTr("DIVE IN")
                anchors.centerIn: parent
                size: 30
            }

            MouseArea
            {
                anchors.fill: parent
                onClicked: mainStackLayoutIndex = 1
            }
        }
    }
}
