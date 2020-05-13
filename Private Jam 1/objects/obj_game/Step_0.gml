/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("R")) {
	if instance_exists(obj_tire) and obj_tire.stopped {
		audio_pause_sound(snd_speedZoneCharge);
		audio_play_sound(snd_speedZoneRelease, 1, false);
		obj_tire.stopped = false;
		obj_tire.zoneUsed = true;
		//instance_destroy(obj_speedZone);
	}else
	room_restart();
}