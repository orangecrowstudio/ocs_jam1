/// @description Insert description here
// You can write your code in this editor


//tutorial lv 1//
if global.currentLv == "1" {
	
	introTutorialStart = false;
	introTutorial = false;
	introTutorial2 = false;
	introTutorial3 = false;
	introDoneCheck = false;
	alarm_set(1,120);
	//set alarm
	aSet = true;


	//first pump
	introTutorialPump = false;
	introTutorialPump2 = false;

	//firstPump = false;
	//if global.lv1Tutorial {
	//	firstPump = true;
	//}
	
	firstPump = true;

	//see tire 1
	introTutorialTire = false;
	introTutorialTire2 = false;

	seeTire1 = true;
}

//Tutorial lv2//
//level2Tutorial = false;
//	level2Tutorial2 = false;
if global.currentLv == "2" {
	//lv2DrawCheck = true;
	level2Tutorial = false;
	level2Tutorial2 = false;
	
	//see spikes
	seeSpikes = false;
	seeFloatSpikes = false;
	
	//set alarm
	aSet = true;
}

//Tutorial lv3//
if global.currentLv == "3" {
	level3Tutorial = false;
	
	//see speed zone
	seeSpeedZone = false;
	
	//set alarm
	aSet = true;
}