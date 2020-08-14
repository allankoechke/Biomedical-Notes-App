import QtQuick 2.0

Text {
    property int fontIndex: -1
    property real size: 15
    font.family: fontIndex === -1? robotoRegularFontLoader.name:fontIndex===0? robotoThinFontLoader.name:fontIndex===1? robotoBoldFontLoader.name:fontIndex===2? goboldRegularFontLoader.name:goboldThinFontLoader.name
    font.pixelSize: size
}
