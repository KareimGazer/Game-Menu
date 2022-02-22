import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id:mainWindow;
    width: 800
    height: 600
    visible: true
    title: qsTr("Hello World")


    GameButton{
        id:playButton
        x:mainWindow.width / 10; y:mainWindow.height * (3/4);
        gameOption: "Play";
    }
    GameButton{
        id:settingsButton
        x:mainWindow.width / 10; y:playButton.y + playButton.height;
        gameOption: "Settings";
    }
    GameButton{
        id:quitButton
        x:mainWindow.width / 10; y:settingsButton.y + settingsButton.height;
        gameOption: "Quit";
    }

}

