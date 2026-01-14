///@description step code
gpu_set_tex_filter(false);

#region movement

var _hor,_ver;

_hor = keyboard_check(vk_right) - keyboard_check(vk_left);
_ver = keyboard_check(vk_down) - keyboard_check(vk_up);

moveStats = (keyboard_check(ord("X")) ? 1.5 : 1);

var xspeed = _hor * moveStats
var yspeed = _ver * moveStats

if(_hor != 0 || _ver != 0)
{
	
	x += xspeed
	y += yspeed

	
	image_speed = (moveStats <= 1 ? 1 : 1.5);
	if(_hor < 0 )
		sprite_index = (moveStats <= 1 ? playerStats.left : playerStats.leftRun);
	else if(_hor > 0 )
		sprite_index = (moveStats <= 1 ? playerStats.right : playerStats.rightRun);
	else if(_ver < 0)
		sprite_index = (moveStats <= 1  ? playerStats.up : playerStats.upRun);
	else if(_ver > 0)
		sprite_index = (moveStats <= 1 ? playerStats.down : playerStats.downRun);
	
	if(place_meeting(x + xspeed, y, Obj_C_Parent))
	{
		x = xprevious;
	}
    if (place_meeting(x, y + yspeed, Obj_C_Parent)){
        y = yprevious
    }
}

else
	stopPlayer();

#endregion movement

