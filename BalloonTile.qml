import QtQuick 2.1
import BasicUIControls 1.0
import qb.components 1.0

Tile {
	id: balloonTile
	property bool dimState: screenStateController.dimmedColors

	NewTextLabel {
		id: clickText
		width: isNxt ? 284 : 220;  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Click here for Balloons!"
		anchors {
			top: parent.top
			topMargin: 1
			horizontalCenter: parent.horizontalCenter 
			}
		visible: !dimState
	}


	NewTextLabel {
		id: clickText2
		width: isNxt ? 284 : 220;  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Start!"
		anchors {
			top: clickText.bottom
			topMargin: 1
			horizontalCenter: parent.horizontalCenter 
			}
		onClicked: {balloonMode("Start");}
		visible: !dimState
	}


	NewTextLabel {
		id: clickText3
		width: isNxt ? 284 : 220;  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Stop!"
		anchors {
			top: clickText2.bottom
			topMargin: 1
			horizontalCenter: parent.horizontalCenter 
			}
		onClicked: {balloonMode("Stop");}
		visible: !dimState
	}


}