/// @description Insert description here
// You can write your code in this editor


if global.currentLv != "1" and global.currentLv != "5" and global.currentLv != "10"{
	draw_set_halign(fa_center);
	draw_text(x, y - 64, "Good luck, Robert!");
	draw_self();
}

if global.currentLv == "5" and global.currentLv != "10" {
	draw_set_halign(fa_center);
	draw_text(x, y - 64, "You found me!");
	draw_self();
}

if global.currentLv == "10" and global.lastLvStart == false and global.lastLvEnd == false{
	draw_set_halign(fa_center);
	draw_text(x, y - 96, "Once you start,\nthere's no turning back!");
	draw_self();
}

if global.lastLvStart {
	draw_set_halign(fa_center);
	draw_text(x, y - 96, "You can do it!");
	draw_self();
}

if global.lastLvEnd {
	draw_set_halign(fa_center);
	draw_text(x, y - 96, "We made it!");
	draw_self();
}

draw_self();