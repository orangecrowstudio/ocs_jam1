/// @description Insert description here
// You can write your code in this editor


//Intro
if introTutorialStart {
	draw_set_halign(fa_center);
	draw_text(x, y - 96, "Hello!");
	if aSet {
		aSet = false;
		alarm_set(2,120);
	}
}

if introTutorial {
	draw_set_halign(fa_center);
	draw_text(x, y - 96, "My name is Robert\nand I've lost my three friends.");
	if aSet {
		aSet = false;
		alarm_set(2,180);
	}
}

if introTutorial2 {
	draw_set_halign(fa_center);
	draw_text(x, y - 96, "Can you help me find them?");
	if aSet {
		aSet = false;
		alarm_set(2,180);
	}
}

if introTutorial3 {
	draw_set_halign(fa_center);
	draw_text(x, y - 96, "We have an important race\ncoming up that we can't be late for!");
	if aSet {
		aSet = false;
		alarm_set(2,240);
	}
}

//First Pump
if introTutorialPump {
	draw_set_halign(fa_center);
	draw_text(x, y - 96, "Pump It!");
	if aSet {
		aSet = false;
		alarm_set(2,60);
	}
}

if introTutorialPump2 {
	draw_set_halign(fa_center);
	draw_text(x, y - 96, "LOUDER!");
	if aSet {
		aSet = false;
		alarm_set(2,60);
	}
}

//See Tire 1

if introTutorialTire {
	draw_set_halign(fa_center);
	draw_text(x, y - 96, "Lola! It's me! Stay right there!");
	if aSet {
		obj_tire1.introLeave = true;
		aSet = false;
		alarm_set(2,180);
	}
}

if introTutorialTire2 {
	draw_set_halign(fa_center);
	draw_text(x, y - 96, "aaaannnnddd she's gone.");
	if aSet {
		aSet = false;
		alarm_set(2,120);
	}
}



draw_self();