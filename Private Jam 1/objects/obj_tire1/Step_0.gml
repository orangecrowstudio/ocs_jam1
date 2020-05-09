/// @description Insert description here
// You can write your code in this editor


if introLeave {
	introLeave = false;
	alarm_set(0,30);
}

if place_free(x, y + 1) {
	y -= 5;
}