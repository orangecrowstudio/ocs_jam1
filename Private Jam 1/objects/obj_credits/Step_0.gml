/// @description Insert description here
// You can write your code in this editor



//if screenFade {
//	backAlpha += 0.02;
//	if backAlpha >= 1 {
//		screenFade = false;
//		drawText = true;
//	}
//}
	
	
//if drawText {
//	creditAlpha += 0.02;
//}


//new
if screenFade {
	if backAlpha < 1 {
		backAlpha += 1/fadeTime;
	}

	if backAlpha >= 1 and !drawText {
		drawText = true;
	}

	if creditAlpha < 1 and drawText {
		creditAlpha += 1/fadeTime;
	}
}


//old
//if alpha < 1 {

//   alpha += 1/fadeTime; // alpha will reach 1 at set fade time
//}

//if alpha >= 1 and !isBlack{
//   isBlack = true;
//   with(obj_raider){instance_destroy();}
//   with(o_UI_play){instance_destroy();}
//   with(o_UI_reset){instance_destroy();}
//}

//if textAlpha < 1 and isBlack{
//		textAlpha += 1/fadeTime
//}



