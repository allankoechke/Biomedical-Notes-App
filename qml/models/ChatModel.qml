import QtQuick 2.0

ListModel
{
    id: root

    ListElement
    {
        unsolved: true
        content: qsTr("A ListView displays data from models created from built-in QML types like ListModel and XmlListModel, or custom model classes defined in C++ that inherit from QAbstractItemModel or QAbstractListModel.")
    }

    ListElement
    {
        unsolved: false
        content: qsTr("A ListView has a model, which defines the data to be displayed, and a delegate, which defines how the data should be displayed. Items in a ListView are laid out horizontally or vertically. List views are inherently flickable because ListView inherits from Flickable. ")
    }

    ListElement
    {
        unsolved: false
        content: qsTr("The following example shows the definition of a simple list model defined in a file called ContactModel.qml:")
    }

    ListElement
    {
        unsolved: false
        content: qsTr("An improved list view is shown below. The delegate is visually improved and is moved into a separate contactDelegate component.")
    }

    ListElement
    {
        unsolved: true
        content: qsTr("Delegates are instantiated as needed and may be destroyed at any time. They are parented to ListView's contentItem, not to the view itself. State should never be stored in a delegate.")
    }
}
