///// @description Insert description here
//// You can write your code in this editor

#region //If round has started//

//if go {
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_space = keyboard_check_pressed(vk_space);
	key_space_held = keyboard_check(vk_space);
	
	var move = key_right - key_left;
	
	//animation state
	//if !go {
	//	if key_left {
	//		image_xscale = -1;
	//		image_speed = 30;
	//	}else if key_right {
	//		image_xscale = 1;
	//		image_speed = 30;
	//	}else {
	//		image_speed = 0;
	//		image_index = 1;
	//	}
	//}
	
	//Movement
	if !go {hsp = move * walksp;}
	vsp = vsp + grv;
	
	
	//animation
if !go {
	if key_left {
		image_speed = 1;
		image_xscale = -1;
	}else if key_right {
		image_speed = 1;
		image_xscale = 1;
	}else image_speed = 0;
}

if go {
	if hsp > 0 {
		image_speed = 1;
	} else image_speed = 0;
}

	//key_left = keyboard_check(vk_left);
	//key_right = keyboard_check(vk_right);
	//key_space = keyboard_check_pressed(vk_space);
	//key_space_held = keyboard_check(vk_space);
	
//MOVEMENT
	vsp = vsp + grv;

//Check if o2 is collected
//if haveO2 {
//	jmpstat = o2jmp;
//}else jmpstat = jmp;

//Check if hit by spikes
if spikeHit {
	haveO2 = false;
	jmpstat = spikejmp;
}else {
	if haveO2 {
	jmpstat = o2jmp;
	}else jmpstat = jmp;
}

//JUMPING//
//Gives a few frames that you can jump after you leave the ground
	canJump -= 1;
	if canJump > 0 and key_space {
		//if haveO2 {TweenEasyRotate(0, -360, 0, 60, EaseInOutQuad);}
		if !stopped {
			audio_play_sound(snd_jump, 1, false);
			vsp = -jmpstat;
			canJump = 0;
			haveO2 = false;
		}
	}

	if place_meeting(x, y+1, obj_wall) or place_meeting(x, y+1, obj_wallSmall) {
		canJump = 10;
	}

	//Stops a jump if space is released
	if vsp < 0 and !key_space_held {
		vsp = max(vsp, 0);
	}
	
//Horizontal Collision Wall//
	if !go {
		if place_meeting(x + hsp, y, obj_wall) {
		while (!place_meeting(x+sign(hsp), y, obj_wall)) {
			x = x + sign(hsp);
		}
		hsp = 0;
		}
		//small wall
		if place_meeting(x + hsp, y, obj_wallSmall) {
		while (!place_meeting(x+sign(hsp), y, obj_wallSmall)) {
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
	else if place_meeting(x + hsp, y, obj_wallSmall) {
		while (!place_meeting(x+sign(hsp), y, obj_wallSmall)) {
			x = x + sign(hsp);
		}
		hsp = 0;
	}

// Small Wall //
//if !go {
//		if place_meeting(x + hsp, y, obj_wallSmall) {
//		while (!place_meeting(x+sign(hsp), y, obj_wallSmall)) {
//			x = x + sign(hsp);
//		}
//		hsp = 0;
//		}
		
//	x = x + hsp;
//	}else if place_meeting(x + hsp, y, obj_wallSmall) {
//		while (!place_meeting(x+sign(hsp), y, obj_wallSmall)) {
//			x = x + sign(hsp);
//		}
//		hsp = 0;
//}
	
//Vertical Collision
	if place_meeting(x, y + vsp, obj_wall) {
		while (!place_meeting(x, y+sign(vsp), obj_wall)) {
			y = y + sign(vsp);
		}
		vsp = 0;
		if go {hsp = walksp;}
	}
	//samll wall
	if place_meeting(x, y + vsp, obj_wallSmall) {
		while (!place_meeting(x, y+sign(vsp), obj_wallSmall)) {
			y = y + sign(vsp);
		}
		vsp = 0;
		if go {hsp = walksp;}
	}
	y = y + vsp;
	if go {
	
		if !spikeHit {
			if !stopped {
				//Speed Zone Check
				if zoneUsed {
					x = x + spdZone;
					if zoneCheck {
						zoneCheck = false;
						alarm_set(0,60);
					}
				}else x = x + hsp; //Constant forward
			}
		}else x = x + spikeSpd; //Speed after hitting spikes
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



#region //Tutorial Info

////Intro
//if introDoneCheck {
//	instance_create_layer(x, y )




#endregion