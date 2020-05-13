/// @description Insert description here
// You can write your code in this editor


//draw_set_color(c_black);
//draw_set_alpha(backAlpha);
//draw_rectangle(0,0,room_width,room_height,false);
	
	
//if drawText {
//	draw_set_color(c_white);
//	draw_set_alpha(creditAlpha);
//	draw_text(room_width / 2, 64, "TEST");
	
//}


//new
if screenFade {
	draw_set_alpha(backAlpha);
	draw_set_color(c_black);
	draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),room_width,room_height,false);
	with(obj_menuBut){draw_self()}
	draw_set_alpha(1); // reset alpha value so it doesn't mess with other draw events

	if drawText {
		draw_set_color(c_white);
		draw_set_alpha(creditAlpha);
		var vx = camera_get_view_x(view_camera[0]);
		var vy = camera_get_view_y(view_camera[0]);
		draw_text(vx + 500, vy + 150, "Thank you for playing!");
		draw_text(vx + 500, vy + 325, "Made by:");
		draw_text(vx + 500, vy + 375, "Derek Golliher");
		draw_text(vx + 500, vy + 425, "Evan Golliher");
		with(obj_menuBut){draw_self()}
		//draw_text(vx + 500, vy + 350, "SCORE");
		//draw_text(camera_get_view_x(view_camera[0]) / 2,camera_get_view_y(view_camera[0]) / 2, "TEST");
		//draw_text(room_width - 64, 64, "TEST");
		//draw_text(camera_get_view_x(0), y, "TEST");
		//view_get_wport(0) / 2, y
		draw_set_alpha(1);
	}
}


//old
//draw event

//draw_set_alpha(alpha);

//draw_set_colour(c_black);

//draw_rectangle(0,0,room_width,room_height,-1);

//draw_set_alpha(1); //reset alpha value so it doesn't mess with other draw events

//if isBlack {
//draw_set_color(c_white);
//draw_set_font(fnt_ready);
//draw_set_alpha(textAlpha);
//draw_set_halign(fa_center);
//draw_text(room_width/2, 64,"Thank you for playing The Last Mummy!");
//draw_text(room_width/2,room_height/2 - 64,"Made for the 101 Hour Game Jam by.");
//draw_text(room_width/2,room_height/2,"Derek");
//draw_text(room_width/2,room_height/2 + 64,"Brin");
//draw_text(room_width/2,room_height/2 + 128,"Vita");
//draw_set_alpha(1);
//}