/// @description Insert description here
// You can write your code in this editor
if obj_tire.spikeHit {
	with other {
		spikeHit = false;
		haveO2 = true;
	}
	instance_destroy(obj_tirePressure);
	instance_destroy();
}