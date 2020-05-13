/// @description Insert description here
// You can write your code in this editor


if global.currentLv != "1" and global.currentLv != 9 and global.currentLv != 10 {
	draw_set_halign(fa_center);
	draw_text(x, y - 64, "Yeehaw!");
	draw_self();
}

if global.currentLv == "9" {
	draw_set_halign(fa_center);
	draw_text(x, y - 64, "Better late than never!");
	draw_self();
}

if global.currentLv == "10" and global.lastLvStart == false and global.lastLvEnd == false{
	draw_set_halign(fa_center);
	draw_text(x, y - 96, "This is it!");
	draw_self();
}

if global.lastLvStart {
	draw_set_halign(fa_center);
	draw_text(x, y - 96, "Good riddance!");
	draw_self();
}

if global.lastLvEnd {
	draw_set_halign(fa_center);
	draw_text(x, y - 96, "I did!");
	draw_self();
}

draw_self();