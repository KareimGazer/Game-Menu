import QtQuick 2.0
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Button {
    id: gameButton
    property color rectColor: "red";
    property int rectWidth: 10;
    property string gameOption: "";

    palette { // background color
        button: "white"
    }

    Text{
        id: gameButtonText
        x:gameButton.indicator.width + 5;
        text: gameOption;
    }

    indicator: Rectangle{
        id:gameButtonIndicator
        width: rectWidth;
        height: gameButtonText.height; // should be according to the text pexel size
        color: gameButton.rectColor;
    }

    states: [
        State {
            name: "Normal"
            when: !gameButton.pressed && !gameButton.hovered
            // when: gameButton.hoverEnabled // stuck at normal!!
            PropertyChanges {
                target: gameButton;
                rectColor: "red";
                rectWidth: 10;
                height: gameButtonText.height;
            }
            PropertyChanges {
                target: gameButtonText;
                font.pixelSize: 16;
            }
        },
        State {
            name: "Clicked"
            when: gameButton.pressed
            extend: "Normal"
            PropertyChanges {
                target: gameButton;
                rectColor: "green";
                rectWidth: 30;
            }
        },
        State {
            name: "Hovered"
            when: gameButton.hovered
            extend: "Normal"
            PropertyChanges {
                target: gameButton;
                rectWidth: 25;
            }
        }
    ]

    state: "Normal";

    onStateChanged: {
        console.log("State: " + state);
    }
}

