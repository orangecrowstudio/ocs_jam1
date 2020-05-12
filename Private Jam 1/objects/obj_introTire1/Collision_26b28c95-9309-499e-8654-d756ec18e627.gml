/// @description Insert description here
// You can write your code in this editor

if global.currentLv == "1" {
	if other.seeTire1 {
		other.seeTire1 = false;
		other.introTutorialTire = true;
	}
}


if global.currentLv == "2" {
	if !other.seeSpikes {
		other.seeSpikes = true;
		other.level2Tutorial = true;
		instance_destroy();
	}
	if other.seeFloatSpikes {
		other.seeFloatSpikes = false;
		other.level2Tutorial2 = true;
	}
}

if global.currentLv == "3" {
	if !other.seeSpeedZone {
		other.seeSpeedZone = true;
		other.level3Tutorial = true;
	}
}