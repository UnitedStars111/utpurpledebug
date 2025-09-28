if place_meeting(x, y, objAstral) and objAstral.canMove && keyboard_check_pressed(ord("Z")) {
	var instantiated = instance_create_depth(0, 0, -9999, objTextbox);
	instantiated.text = text;
}