/// @description Insert description here
// You can write your code in this editor
aSet = true;
if introTutorial3 {
	introDoneCheck = true;
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
	introTutorialTire2 = false;
}

if introTutorialTire {
	introTutorialTire = false;
	introTutorialTire2 = true;
}