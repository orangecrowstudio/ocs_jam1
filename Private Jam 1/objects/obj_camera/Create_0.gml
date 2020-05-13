/// @description Insert description here
// You can write your code in this editor


cam = view_camera[0];
follow = obj_tire;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;



//cam shake
view_x = camera_get_view_x(view_camera[0]);
view_y = camera_get_view_y(view_camera[0]);
spikeCheck = true;