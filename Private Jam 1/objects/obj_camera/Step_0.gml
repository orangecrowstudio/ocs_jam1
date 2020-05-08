/// @description Insert description here
// You can write your code in this editor


//update destination

if instance_exists(follow) {
	xTo = follow.x + 256
	yTo = follow.y
}

//update object position

x += (xTo - x) / 25;
y += (yTo - y) / 25;

//Clamp to not view outside of room

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

//update camera view

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);


//Move Background Layers (x is background as far back as it can go.)
//if obj_tire.go {
	if layer_exists("Background") {
		layer_x("Background", x / 2);
	}

	if layer_exists("Backgrounds_1") {
		//layer_x("Backgrounds_1", x / 3);
		layer_hspeed("Backgrounds_1", -0.3);
	}

	if layer_exists("Backgrounds_2") {
		//layer_x("Backgrounds_2", x / 3);
		layer_hspeed("Backgrounds_2", -0.2);
	}

	if layer_exists("Backgrounds_3") {
		layer_x("Backgrounds_3", x / 3);
	}
//}else {
//	layer_hspeed("Backgrounds_1", -2);
//}