/// @description Insert description here
// You can write your code in this editor


if global.currentLv != "1" and global.currentLv != "7" and global.currentLv != "10"{
	draw_set_halign(fa_center);
	draw_text(x, y - 64, "Get'em, Buddy!");
	draw_self();
}

if global.currentLv == "7" and global.currentLv != "10"{
	draw_set_halign(fa_center);
	draw_text(x, y - 96, "I knew I'd find you here!");
	draw_self();
}

if global.currentLv == "10" and global.lastLvStart == false and global.lastLvEnd == false{
	draw_set_halign(fa_center);
	draw_text(x, y - 96, "The big race!");
	draw_self();
}

if global.lastLvStart {
	draw_set_halign(fa_center);
	draw_text(x, y - 96, "Good Luck!");
	draw_self();
}

if global.lastLvEnd {
	draw_set_halign(fa_center);
	draw_text(x, y - 96, "I never doubted you!");
	draw_self();
}

draw_self();