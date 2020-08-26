import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.4 as Controls2

import "../components"
import "../delegates"
import "../models"

Item {
    Layout.fillWidth: true
    Layout.fillHeight: true

    Controls2.ScrollView
    {
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.left: parent.left
        clip: true

        ColumnLayout
        {
            width: parent.width
            height: parent.height
            anchors.margins: 20

            DashboardPane
            {
                height: 300
                dashboardPaneLabel: qsTr("Latest E-Books")

            }

            DashboardPane
            {
                height: 300
                dashboardPaneLabel: qsTr("Trending in the Med-tech World")

            }

            DashboardPane
            {
                height: 300
                dashboardPaneLabel: qsTr("Latest skills to learn")

            }

        }
    }

}
