/// @description Insert description here
// You can write your code in this editor


//update destination

if instance_exists(follow) {
	xTo = follow.x
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

if layer_exists("Background") {
	layer_x("Background", x / 2);
}

//if layer_exists("Background") {
//	layer_x("Background", x / 4);
//}