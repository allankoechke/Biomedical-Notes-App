import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.4 as Controls2

import "../components"
import "../delegates"
import "../models"

Item {
    Layout.fillWidth: true
    Layout.fillHeight: true

    ColumnLayout
    {
        anchors.fill: parent
        anchors.leftMargin: 20
        anchors.rightMargin: 20
        spacing: 10

        Rectangle
        {
            Layout.fillWidth: true
            Layout.preferredHeight: 80
            color: "white"
            radius: 4

            RowLayout
            {
                anchors.fill: parent
                anchors.leftMargin: 40
                anchors.rightMargin: 30
                spacing: 20

                AppIcon
                {
                    color: "#0073b1"
                    icon: "\uf14b"
                    size: 40
                    Layout.alignment: Qt.AlignVCenter|Qt.AlignLeft
                }

                Rectangle
                {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.topMargin: 10
                    Layout.bottomMargin: 10
                    color: "transparent"
                    border.width: 1
                    border.color: "grey"
                    radius: 3

                    TextInput
                    {
                        id: postInput
                        color: "black"
                        font.pixelSize: 15
                        anchors.fill: parent
                        anchors.margins: 5
                        wrapMode: TextInput.WordWrap
                        text: ""

                        Text{
                            visible: postInput.text===""
                            text: qsTr("Start a new post, ask a question, say hi to the community<br><i><b>HTML formatting allowed")
                            color: "#535353"
                            font.pixelSize: 13
                            textFormat: Text.StyledText
                            anchors.top: parent.top
                            anchors.left: parent.left
                        }
                    }
                }

                Rectangle
                {
                    Layout.alignment: Qt.AlignVCenter|Qt.AlignLeft

                    height: 50; width: 100
                    color: "#0073b1"
                    radius: 5

                    AppText
                    {
                        text: qsTr("POST")
                        color: "white"
                        font.pixelSize: 18
                        font.bold: true
                        anchors.centerIn: parent
                    }

                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked:
                        {
                            if(postInput.text!=="")
                            {
                                var dt = new Date()

                                chatModel.append({"unsolved":true,
                                                     "content":postInput.text,
                                                     "date":dt,
                                                     "comments":0,
                                                     "likes":0
                                                 });
                                postInput.text = ""
                            }

                        }
                    }
                }
            }
        }


        Controls2.ScrollView
        {
            Layout.fillHeight: true
            Layout.fillWidth: true
            clip: true

            ListView
            {
                id: listView
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                spacing: 4

                model: ListModel{ id: chatModel}
                delegate: Component
                {
                    id: chatDelegate
                    ChatDelegate
                    {
                        width: listView.width

                        isQuerryPending: unsolved
                        chatContents: content
                        chatComments: comments
                        chatLikes: likes
                        datePosted: date

                        onLikeClicked: {
                            var _likes = chatModel.get(index).likes + 1
                            var _unsolved = chatModel.get(index).unsolved
                            var _comments = chatModel.get(index).comments
                            var _date = chatModel.get(index).date
                            var _content = chatModel.get(index).content

                            var ind = index

                            chatModel.insert(index, {"unsolved":_unsolved,
                                                 "content":_content,
                                                 "date":_date,
                                                 "comments":_comments,
                                                 "likes":_likes
                                             });
                            chatModel.remove(ind+1);

                        }
                        onCommentClicked: {
                            var _likes = chatModel.get(index).likes
                            var _unsolved = chatModel.get(index).unsolved
                            var _comments = chatModel.get(index).comments + 1
                            var _date = chatModel.get(index).date
                            var _content = chatModel.get(index).content

                            var ind = index

                            chatModel.insert(index, {"unsolved":_unsolved,
                                                 "content":_content,
                                                 "date":_date,
                                                 "comments":_comments,
                                                 "likes":_likes
                                             });
                            chatModel.remove(ind+1);
                        }

                        onMarkSolvedClicked: {
                            var _likes = chatModel.get(index).likes
                            var _unsolved = false
                            var _comments = chatModel.get(index).comments
                            var _date = chatModel.get(index).date
                            var _content = chatModel.get(index).content

                            var ind = index

                            chatModel.insert(index, {"unsolved":_unsolved,
                                                 "content":_content,
                                                 "date":_date,
                                                 "comments":_comments,
                                                 "likes":_likes
                                             });
                            chatModel.remove(ind+1);
                        }
                    }
                }
            }
        }
    }
}
