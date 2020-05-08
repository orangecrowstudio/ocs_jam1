/// @description Insert description here
// You can write your code in this editor
if hitCheck {
	audio_play_sound(snd_flat, 1, false);
	with other {instance_create_layer(x, y - 64, "Instances", obj_tirePressure);}
	hitCheck = false;
	other.spikeHit = true;
}