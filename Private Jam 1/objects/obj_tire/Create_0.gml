/// @Create direction variables
// You can write your code in this editor

//animation states
//moveLeft = false;
//moveRight = false;

go = false;

//h and v speed
if global.quickMode {
	hsp = 10;
}else hsp = 6;
vsp = 0;
grv = 0.1;

//Normal walk speed
if global.quickMode {
	walksp = 10;
}else walksp = 6;

//Normal jump vars
jmp = 3;
jmpstat = jmp
canJump = 0;


//O2 jump vars
haveO2 = false;
o2jmp = 9;


//speed zone vars
if global.quickMode {
	spdZone = 25;
}else spdZone = 15;
zoneUsed = false;
zoneCheck = true;
stopped = false;


//spike vars
spikeHit = false;
spikejmp = 2;
if global.quickMode {
	spikeSpd = 5;
}else spikeSpd = 2;



////tutorial lv 1//
//if global.currentLv == "1" {
	
//	introTutorialStart = false;
//	introTutorial = false;
//	introTutorial2 = false;
//	introTutorial3 = false;
//	introDoneCheck = false;
//	alarm_set(1,120);
//	//set alarm
//	aSet = true;


//	//first pump
//	introTutorialPump = false;
//	introTutorialPump2 = false;

//	//firstPump = false;
//	//if global.lv1Tutorial {
//	//	firstPump = true;
//	//}
	
//	firstPump = true;

//	//see tire 1
//	introTutorialTire = false;
//	introTutorialTire2 = false;

//	seeTire1 = true;
//}

////Tutorial lv2//
////level2Tutorial = false;
////	level2Tutorial2 = false;
//if global.currentLv == "2" {
//	//lv2DrawCheck = true;
//	level2Tutorial = false;
//	level2Tutorial2 = false;
	
//	//see spikes
//	seeSpikes = false;
//	seeFloatSpikes = false;
	
//	//set alarm
//	aSet = true;
//}

//Tutorial lv3//
//if global.currentLv == "3" {
//	level3Tutorial = false;
	
//	//see speed zone
//	seeSpeedZone = false;
	
//	//set alarm
//	aSet = true;
//}

//tireDoneCheck = false;

//if global.currentLv == 1{
	//seeTire1 = true;
//}




//go = false;


//onGround = false;
//grv = 0;


//stats
//spd = 5;
//jmp = 10;
//lnd = 5;

////status checks
//onGround = true;
//dwnCheck = true;
//gravity = 0;
