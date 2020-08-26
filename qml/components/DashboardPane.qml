import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.4 as Controls2

import "../components"
import "../delegates"
import "../models"
Rectangle
{
    Layout.fillHeight: true
    Layout.fillWidth: true

    color: "white"
    radius: 4

    property string dashboardPaneLabel: ""

    ColumnLayout
    {
        anchors.margins: 10
        anchors.fill: parent

        AppText
        {
            Layout.fillWidth: true
            Layout.preferredHeight: 30
            verticalAlignment: AppText.AlignVCenter|AppText.AlignLeft
            font.pixelSize: 17
            color: "#535353"
            font.bold: true

            text: dashboardPaneLabel
        }

        Rectangle
        {
            Layout.fillWidth: true
            Layout.preferredHeight: 2
            color: "black"; opacity: 0.08
        }

        Item
        {
            Layout.fillWidth: true
            Layout.fillHeight: true

            Controls2.ScrollView
            {
                anchors.fill: parent
                clip: true

                ListView
                {
                    width: parent.width
                    height: parent.height

                    spacing: 15

                    delegate: Component
                    {
                        DashboardPaneDelegate
                        {

                        }
                    }

                    model: 6
                }

            }
        }
    }
}
