/// @description Insert description here
// You can write your code in this editor
//with other {
//	TweenEasyScale(1, 1, 1.5, 1.5, 0, 10, EaseInOutQuad,TWEEN_MODE_BOUNCE);
//}

if other.firstPump {
	other.firstPump = false;
	other.introTutorialPump = true;
}


other.haveO2 = true;
audio_play_sound(snd_air, 1, false);
instance_destroy();