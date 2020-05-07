/// @description Insert description here
// You can write your code in this editor

if tireStopped and obj_tire.stopped{
	obj_tire.stopped = false;
	obj_tire.zoneUsed = true;
	instance_destroy();
}