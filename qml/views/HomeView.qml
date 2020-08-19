import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.4 as Controls2

import "../components"
import "../subviews"

Item {
    Layout.fillHeight: true
    Layout.fillWidth: true

    ColumnLayout
    {
        anchors.fill: parent
        spacing: 5

        TopNavigationBar
        {
        }

        Item
        {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.margins: 20

            DashboardView
            {
                id: dashboardView
                visible: currentMenuIndex === 0
            }

            NoticeBoardView
            {
                id: noticeboardView
                visible: currentMenuIndex === 2
            }

            SocialFeedView
            {
                id: socialfeedView
                visible: currentMenuIndex === 3
            }

            LibraryView
            {
                id: libraryView
                visible: currentMenuIndex === 4
            }

            FavouritesView
            {
                id: favouritesView
                visible: currentMenuIndex === 5
            }

            SettingsView
            {
                id: settingsView
                visible: currentMenuIndex === 6
            }
        }
    }
}
