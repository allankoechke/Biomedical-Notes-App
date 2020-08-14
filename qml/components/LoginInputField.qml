import QtQuick 2.0
import QtQuick.Layouts 1.3

import "../components"

Item {

    height: 45; Layout.fillWidth: true

    property string placeholderText: "Enter text"
    property alias textInput: textInput
    property string textIcon
    property bool isPasswordInput: false

    RowLayout
    {
        anchors.fill: parent
        spacing: 0

        Rectangle
        {
            Layout.fillHeight: true
            Layout.preferredWidth: height+10
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#0DAAF8" }
                GradientStop { position: 1.0; color: "#F7058D" }
            }

            AppIcon
            {
                size: 20
                color: "white"
                anchors.centerIn: parent
                icon: "\uf80c"//textIcon
            }
        }

        Rectangle
        {
            Layout.fillWidth: true
            Layout.fillHeight: true
            radius: 2
            color: "white"

            TextInput
            {
                id: textInput

                height: 0.85*parent.height
                width: parent.width-20
                anchors.centerIn: parent
                horizontalAlignment: TextEdit.AlignLeft
                verticalAlignment: TextEdit.AlignVCenter
                color: "#00001a"
                clip: true
                maximumLength: 40
                echoMode: isPasswordInput? TextInput.Password:TextInput.Normal

                Text{
                    font.pixelSize: parent.font.pixelSize
                    color: "grey"
                    opacity: 0.8
                    text: placeholderText
                    visible: parent.text===""
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                }
            }
        }
    }
}
