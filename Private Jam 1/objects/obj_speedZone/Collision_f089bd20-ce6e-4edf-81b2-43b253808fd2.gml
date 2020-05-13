/// @description Insert description here
// You can write your code in this editor
with other {
	image_speed = 1;
	stopped = true;
	x = obj_speedZone.x;
	y = obj_speedZone.y;
}

if stopCheck {
	audio_play_sound(snd_speedZoneCharge, 1, true);
	stopCheck = false;
	alarm_set(0,60);
}