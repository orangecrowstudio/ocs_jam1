/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
instance_destroy(obj_tire1);
instance_destroy(obj_tire2);
instance_destroy(obj_tire3);
image_index = 1;
alarm_set(0,80);
audio_play_sound(snd_carTakeOff, 1, false);
