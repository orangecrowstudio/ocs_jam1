/// @description Insert description here
// You can write your code in this editor

if global.currentLv == "1" {
//Intro
	aSet = true;
	if introTutorial3 {
		introDoneCheck = true;
		obj_arrow.createIntroO2Check = true;
		introTutorial3 = false;
	}

	if introTutorial2 {
		introTutorial2 = false;
		introTutorial3 = true;
	}

	if introTutorial {
		introTutorial = false;
		introTutorial2 = true;
	}

	if introTutorialStart {
		introTutorialStart = false;
		introTutorial = true;
	}

	//First Pump
	if introTutorialPump2 {
		introTutorialPump2 = false;
	}

	if introTutorialPump {
		introTutorialPump = false;
		introTutorialPump2 = true;
	}

	//See Tire1

	if introTutorialTire2 {
		obj_arrow.createIntroO2Check2 = true;
		introTutorialTire2 = false;
		//tireDoneCheck = true;
	}

	if introTutorialTire {
		introTutorialTire = false;
		introTutorialTire2 = true;
	}
}