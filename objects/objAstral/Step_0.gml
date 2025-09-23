///@description step code
gpu_set_tex_filter(false);

#region movement

var _hor,_ver;

_hor = keyboard_check(vk_right) - keyboard_check(vk_left);
_ver = keyboard_check(vk_down) - keyboard_check(vk_up);

moveStats = (keyboard_check(ord("X")) ? 1.5 : 1);

if(_hor != 0 || _ver != 0)
{
	
	x += _hor * moveStats;
	y += _ver * moveStats;

	
	image_speed = (moveStats <= 1 ? 1 : 1.5);
	if(_hor < 0 )
		sprite_index = (moveStats <= 1 ? playerStats.left : playerStats.leftRun);
	else if(_hor > 0 )
		sprite_index = (moveStats <= 1 ? playerStats.right : playerStats.rightRun);
	else if(_ver < 0)
		sprite_index = (moveStats <= 1  ? playerStats.up : playerStats.upRun);
	else if(_ver > 0)
		sprite_index = (moveStats <= 1 ? playerStats.down : playerStats.downRun);
	
	if(place_meeting(x + (_hor / 3), y + (_ver / 3), Obj_C_Parent))
	{
		x = xprevious;
		y = yprevious;
		stopPlayer();
	}
}

else
	stopPlayer();


#endregion movement

