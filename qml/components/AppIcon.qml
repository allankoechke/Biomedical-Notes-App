import QtQuick 2.0
import QtQuick.Controls 2.4

// Displays the icon font in a label

Label {
    property string icon
    property real size: 15

    font.family: mainQmlApp.fontAwesomeFontLoader.name
    font.pixelSize: size
    text: icon
}
