/// @description Insert description here
// You can write your code in this editor
//if global.lv1Tutorial {
//	global.lv1Tutorial = false;
//}


//Current Level Change//

if global.currentLv == "1" {
	//room_goto(rm_lv12D);
	global.level2 = true;
	//global.currentLv = "2";
}
if global.currentLv == "2" {
	global.level3 = true;
	//global.currentLv = "3";
}
if global.currentLv == "3" {
	global.level4 = true;
	//global.currentLv = "4";
}
if global.currentLv == "4" {
	global.level5 = true;
	//global.currentLv = "5";
}
if global.currentLv == "5" {
	global.level6 = true;
	//global.currentLv = "6";
}
if global.currentLv == "6" {
	global.level7 = true;
	//global.currentLv = "7";
}
if global.currentLv == "7" {
	global.level8 = true;
	//global.currentLv = "8";
}
if global.currentLv == "8" {
	global.level9 = true;
	//global.currentLv = "9";
}
if global.currentLv == "9" {
	global.level10 = true;
	//global.currentLv = "10";
}

room_goto_next();