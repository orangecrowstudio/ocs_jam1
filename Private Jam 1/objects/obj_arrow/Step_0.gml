/// @description Insert description here
// You can write your code in this editor


if instance_exists(obj_tire) and obj_tire.introDoneCheck {
	obj_tire.introDoneCheck = false;
	instance_create_layer(x, y + 96, "Instances", obj_o2);
	visible = true;
}