// @description movement

left_key = keyboard_check(vk_left);
right_key = keyboard_check(vk_right);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

// movement

xspd = (right_key - left_key) * movspd;
yspd = (down_key - up_key) * movspd;

x += xspd;
y += yspd;

if place_meeting(x + 1, y + 1, objWall) {
	movspd = 0;
}