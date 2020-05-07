/// @description Insert description here
// You can write your code in this editor
if hitCheck {
	with other {instance_create_layer(x, y - 64, "Instances", obj_tirePressure);}
	hitCheck = false;
	other.spikeHit = true;
}