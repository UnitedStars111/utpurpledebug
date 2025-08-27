// DO NOT REMOVE
gpu_set_texfilter(false);

// @description movement

left_key = keyboard_check(vk_left);
right_key = keyboard_check(vk_right);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

// movement

xspd = (right_key - left_key) * movspd;
yspd = (down_key - up_key) * movspd;

if place_meeting(x + xspd, y, objWall) {
	xspd = 0;
}

if place_meeting(x, y + yspd, objWall) {
	yspd = 0;
}

if xspd > 0 {
	sprite_index = sprAstralWalkRight;
} else if xspd < 0 {
	sprite_index = sprAstralWalkLeft
} else if yspd > 0 {
	sprite_index = sprAstralWalkDown;
} else if yspd < 0 {
	sprite_index = sprAstralWalkUp;
}

if (xspd != 0 or yspd != 0) {
	image_speed = 1;
} else {
	image_speed = 0;
	image_index = 0;
}

if keyboard_check(vk_shift) {
	movspd = 1.5;
	image_speed = 1.5;
} else {
	movspd = 1;
	image_speed = 1;
}

x += xspd;
y += yspd;