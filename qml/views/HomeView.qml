import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.4 as Controls2

import "../components"
import "../subviews"

Rectangle {
    Layout.fillHeight: true
    Layout.fillWidth: true
    color: "#f5f5f5"

    ColumnLayout
    {
        anchors.fill: parent
        spacing: 5

        TopNavigationBar
        {
        }

        StackLayout
        {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.margins: 40
            currentIndex: currentMenuIndex

            DashboardView
            {
                id: dashboardView
            }

            NoticeBoardView
            {
                id: noticeboardView
            }

            SocialFeedView
            {
                id: socialfeedView
            }

            LibraryView
            {
                id: libraryView
            }

            FavouritesView
            {
                id: favouritesView
            }

            SettingsView
            {
                id: settingsView
            }
        }
    }
}
