import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id:mainWindow;
    width: 800
    height: 600
    visible: true
    title: qsTr("Hello World")

    Column {
        x:mainWindow.width / 10; y:mainWindow.height * (3/4);
        Repeater {
            model: ["Play", "Settings", "Quit"]
            GameButton{
                gameOption: modelData;
            }
        }
    }

}

