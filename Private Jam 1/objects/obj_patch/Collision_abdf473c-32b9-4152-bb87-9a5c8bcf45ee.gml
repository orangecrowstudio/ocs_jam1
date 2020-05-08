/// @description Insert description here
// You can write your code in this editor
if obj_tire.spikeHit {
	audio_play_sound(snd_patch, 1, false);
	with other {
		spikeHit = false;
		haveO2 = true;
	}
	instance_destroy(obj_tirePressure);
	instance_destroy();
}