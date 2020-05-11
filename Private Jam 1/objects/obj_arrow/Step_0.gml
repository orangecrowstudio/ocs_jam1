/// @description Insert description here
// You can write your code in this editor


//if instance_exists(obj_tire) and obj_tire.introDoneCheck {
//	obj_tire.introDoneCheck = false;
//	instance_create_layer(x, y + 96, "Instances", obj_o2);
//	visible = true;
//}

if global.currentLv == "1" {
	if arrowNum == "First" and createIntroO2Check {
		createIntroO2Check = false;
		instance_create_layer(x, y + 160, "Instances", obj_o2);
		TweenEasyMove(x, y, x, y + 64, 0, 120, EaseInOutQuad, TWEEN_MODE_PATROL);
		visible = true;
	}

	if arrowNum == "Second" and createIntroO2Check2 {
		createIntroO2Check2 = false;
		instance_create_layer(x, y + 160, "Instances", obj_o2);
		TweenEasyMove(x, y, x, y + 64, 0, 120, EaseInOutQuad, TWEEN_MODE_PATROL);
		visible = true;
	}
}

//if instance_exists(obj_tire) and obj_tire.tireDoneCheck {
//	obj_tire.tireDoneCheck = false;
//	instance_create_layer(x, y + 96, "Instances", obj_o2);
//	visible = true;
//}