/// @description Insert description here
// You can write your code in this editor

if global.currentLv != "1" {
	TweenEasyMove(x, y, x, y - 32, 0, 32, EaseInOutQuad, TWEEN_MODE_PATROL);
}

//TweenEasyMove(x, y, x, y - 32, 0, 30, EaseInOutQuad, TWEEN_MODE_PATROL);


introLeave = false



global.lastLvStart = false;
global.lastLvEnd = false;