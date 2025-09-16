if place_meeting(x, y, objAstral) and !instance_exists(objTransition) and objAstral.movespd > 0 {
	var instantiated = instance_create_depth(0, 0, -9999, objTransition)
	instantiated.target_x = target_x;
	instantiated.target_y = target_y;
	instantiated.target_rm = target_rm;
	objAstral.xspd = 0;
	objAstral.yspd = 0;
	objAstral.can_move = false;
}