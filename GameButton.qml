import QtQuick 2.0
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Button {
    id: gameButton
    property color rectColor: "red";
    property int rectWidth: 10;

    height: gameButtonText.height; // should be according to the text pexel size
    palette { // background color
        button: "white"
    }
    // flat: true

    Text{
        id: gameButtonText
        x:gameButton.indicator.width + 5; // relative to the parent element
        text: "Play";
        font.pointSize: 16;
    }

    indicator: Rectangle{
        id:gameButtonIndicator
        width: rectWidth;
        height: gameButtonText.height; // should be according to the text pexel size
        color: gameButton.rectColor;
    }

    states: [
        State {
            name: "PRESSED"
            when: gameButton.pressed
            PropertyChanges {
                target: gameButton;
                rectColor: "green";
                rectWidth: 30;
            }
        },
        State {
            name: "NOTPRESSED"
            when: !gameButton.pressed
            PropertyChanges {
                target: gameButton;
                rectColor: "red";
                rectWidth: 10;
            }
        },
        State {
            name: "Hovered"
            when: gameButton.hover
            PropertyChanges {
                target: gameButton;
                rectColor: "red";
                rectWidth: 25;
            }
        }
    ]

    onStateChanged: {
        console.log("State: " + state);
    }
}

