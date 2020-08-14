import QtQuick 2.12
import QtQuick.Window 2.12

import "./views"

Window {
    id: mainQmlApp

    visible: true
    width: 1080
    height: 650
    title: qsTr("Biomedical App")

    // Font alias properties
    property alias fontAwesomeFontLoader: fontAwesomeFontLoader
    property alias robotoRegularFontLoader: robotoRegularFontLoader
    property alias robotoThinFontLoader: robotoThinFontLoader
    property alias robotoBoldFontLoader: robotoBoldFontLoader
    property alias goboldRegularFontLoader: goboldRegularFontLoader
    property alias goboldThinFontLoader: goboldThinFontLoader

    // Windows
    property alias mainView: mainView

    MainView
    {
        id: mainView
    }

    // Load the icon font
    FontLoader
    {
        id: fontAwesomeFontLoader
        source: "qrc:/assets/fonts/fontawesome.otf"
    }

    // Load the Regular Roboto font
    FontLoader
    {
        id: robotoRegularFontLoader
        source: "qrc:/assets/fonts/Roboto-Regular.ttf"
    }

    // Load the Roboto Thin Font
    FontLoader
    {
        id: robotoThinFontLoader
        source: "qrc:/assets/fonts/Roboto-Thin.ttf"
    }

    // Load the Roboto Bold Font
    FontLoader
    {
        id: robotoBoldFontLoader
        source: "qrc:/assets/fonts/Roboto-Bold.ttf"
    }

    // Load the Gobold Regular Font
    FontLoader
    {
        id: goboldRegularFontLoader
        source: "qrc:/assets/fonts/Gobold Regular.otf"
    }

    // Load the Gobold Thin Font
    FontLoader
    {
        id: goboldThinFontLoader
        source: "qrc:/assets/fonts/Gobold Regular.otf"
    }
}
