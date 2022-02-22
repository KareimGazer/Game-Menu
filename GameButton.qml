import QtQuick 2.0
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

/*
 * GameButton Component
 *
 */
Button {
    id: gameButton
    height: gameButtonText.height;
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
        font.pixelSize: 16;
    }

    indicator: Rectangle{
        id:gameButtonIndicator
        width: rectWidth;
        height: gameButtonText.height; // should be according to the text pexel size
        color: gameButton.rectColor;
    }

    states: [
        // clicked state
        State {
            name: "Clicked"
            when: gameButton.pressed
            extend: ""
            PropertyChanges {
                target: gameButton;
                rectColor: "green";
                rectWidth: 30;
            }
        },
        // hovered state
        State {
            name: "Hovered"
            when: gameButton.hovered
            extend: ""
            PropertyChanges {
                target: gameButton;
                rectWidth: 25;
            }
        }
    ]
}

