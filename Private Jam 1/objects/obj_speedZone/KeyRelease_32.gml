/// @description Insert description here
// You can write your code in this editor

if tireStopped and obj_tire.stopped{
	audio_pause_sound(snd_speedZoneCharge);
	audio_play_sound(snd_speedZoneRelease, 1, false);
	obj_tire.stopped = false;
	obj_tire.zoneUsed = true;
	instance_destroy();
}