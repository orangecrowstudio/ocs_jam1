///// @description Insert description here
//// You can write your code in this editor
if keyboard_check_pressed(ord("R")){room_restart();}



#region //If round has started//

//if go {
	key_left = keyboard_check(vk_left);
	key_right = keyboard_check(vk_right);
	key_space = keyboard_check_pressed(vk_space);
	key_space_held = keyboard_check(vk_space);
	
	var move = key_right - key_left;

	//Movement
	if !go {hsp = move * walksp;}
	vsp = vsp + grv;
	
//MOVEMENT
	vsp = vsp + grv;

//Check if o2 is collected
if haveO2 {
	jmpstat = o2jmp;
}else jmpstat = jmp;


//JUMPING//
//Gives a few frames that you can jump after you leave the ground
	canJump -= 1;
	if canJump > 0 and key_space {
		//if haveO2 {TweenEasyRotate(0, -360, 0, 60, EaseInOutQuad);}
		vsp = -jmpstat;
		canJump = 0;
		haveO2 = false;
	}

	if place_meeting(x, y+1, obj_wall) {
		canJump = 10;
	}

	//Stops a jump if space is released
	if vsp < 0 and !key_space_held {
		vsp = max(vsp, 0);
	}
	
//Horizontal Collision
	if !go {
		if place_meeting(x + hsp, y, obj_wall) {
		while (!place_meeting(x+sign(hsp), y, obj_wall)) {
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	x = x + hsp;
	}else if place_meeting(x + hsp, y, obj_wall) {
		while (!place_meeting(x+sign(hsp), y, obj_wall)) {
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	
//Vertical Collision
	if place_meeting(x, y + vsp, obj_wall) {
		while (!place_meeting(x, y+sign(vsp), obj_wall)) {
			y = y + sign(vsp);
		}
		vsp = 0;
		if go {hsp = walksp;}
	}
	y = y + vsp;
	if go {
	//Constant forward
		x = x + hsp;
	}
//}

#endregion

#region //If round hasn't started//  //OLD//

//if !go {
//	key_left = keyboard_check(vk_left);
//	key_right = keyboard_check(vk_right);
//	key_space = keyboard_check_pressed(vk_space);
//	key_space_held = keyboard_check(vk_space);

//	var move = key_right - key_left;

//	//Movement
//	hsp = move * walksp;
//	vsp = vsp + grv;

////Check if o2 is collected
//	if haveO2 {
//		jmpstat = o2jmp;
//	}else jmpstat = jmp;


//	//Gives a few frames that you can jump after you leave the ground
//	canJump -= 1;
//	if canJump > 0 and key_space {
//		vsp = -jmpstat;
//		canJump = 0;
//		haveO2 = false;
//	}

//	if place_meeting(x, y+1, obj_wall) {
//		canJump = 10;
//	}

//	//Stops a jump if space is released
//	if vsp < 0 and !key_space_held {
//		vsp = max(vsp, 0);
//	}

//	//Horizontal Collision
//	if place_meeting(x + hsp, y, obj_wall) {
//		while (!place_meeting(x+sign(hsp), y, obj_wall)) {
//			x = x + sign(hsp);
//		}
//		hsp = 0;
//	}

//	x = x + hsp;

//	//Vertical Collision
//	if place_meeting(x, y + vsp, obj_wall) {
//		while (!place_meeting(x, y+sign(vsp), obj_wall)) {
//			y = y + sign(vsp);
//		}
//		vsp = 0;
//	}

//	y = y + vsp;
//}

#endregion
