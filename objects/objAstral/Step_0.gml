// DO NOT REMOVE THIS!!!!!!
gpu_set_texfilter(false);

right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
run_key = keyboard_check(vk_shift);

xspd = (right_key - left_key) * movespd;
yspd = (down_key - up_key) * movespd;

if run_key = true {
	movespd = runspd;
	round(movespd);
} else {
	movespd = walkspd;
	round(movespd);
}

// collision
if place_meeting(x + xspd, y, objWall) {
	xspd = 0;
}

if place_meeting(x, y + yspd, objWall) {
	yspd = 0;
}

// anims
if xspd > 0 && !keyboard_check(vk_shift) {
	sprite_index = sprAstralWalkRight;
}

if xspd < 0 && !keyboard_check(vk_shift) {
	sprite_index = sprAstralWalkLeft;
}

if yspd < 0 && !keyboard_check(vk_shift) {
	sprite_index = sprAstralWalkUp;
}

if yspd > 0 && !keyboard_check(vk_shift) {
	sprite_index = sprAstralWalkDown;
}

if run_key = true {
	if xspd > 0  {
		sprite_index = sprAstralRunRight;
	}

	if xspd < 0 {
		sprite_index = sprAstralRunLeft;
}

	if yspd < 0 {
		sprite_index = sprAstralRunUp;
}

	if yspd > 0 {
		sprite_index = sprAstralRunDown;
	}
}

if (xspd != 0 or yspd != 0) {
	image_speed = 1;
} else {
	run_key = false;
	image_index = 0;
	image_speed = 0;
}

x += xspd;
y += yspd;