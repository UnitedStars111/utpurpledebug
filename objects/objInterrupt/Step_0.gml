if place_meeting(x, y, objAstral) and canInterrupt and objAstral.moveStats > 0 {
	objAstral.xspd = 0;
	objAstral.yspd = 0;
	objAstral.canMove = false;
	var instantiated = instance_create_depth(0, 0, -9999, objTextbox);
	instantiated.text = text;
	canInterrupt = false
}