//Balloon by Oepi-Loepi for Toon

import QtQuick 2.1

Item {



    id: balloon2

    width: 120
    height: 120
    x : ((Math.random() * parent.width)-60);
    y : parent.height;

    Item {
        id: sprite
        property int frame: randomNumber(1, 9)
        anchors.centerIn: parent
		height: parent.height
        width: parent.height
        clip: true


        transform: Rotation {
           id: rotator
           origin{
               x: 60
               y: 110
            }
            angle: 0
        }

        SequentialAnimation {
            id: shake
            PropertyAnimation { easing.type: Easing.InQuad; duration: 400; target: rotator; property: "angle"; to: 10 }
            PropertyAnimation { easing.type: Easing.InQuad; duration: 400; target: rotator; property: "angle"; to: -10 }
        }

        Timer {
            running: true
            repeat: true
            interval: 800
            onTriggered: {
                shake.restart();
		console.log("Shake restart");
            }
        }

        Image {
			id: spriteImage
			source: "https://github.com/oepi-loepi/RCC-Balloon/blob/master/components/Balloon4SpriteSheet.png"

			y:0
			x:-parent.width*sprite.frame
        }
    }

    function randomNumber(from, to) {
		return Math.floor(Math.random() * (to - from + 1) + from);
    }

    property int speed: randomNumber(3, 6)
    Timer {
        interval: 50
        running: true
        repeat: true
        onTriggered: {
            balloon2.y -= balloon2.speed;
            if (balloon2.y + balloon2.height < -30) {
               balloon2.destroy();
            }
        }
    }

}
