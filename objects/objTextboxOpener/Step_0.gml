if place_meeting(objAstral.x, objAstral.y, objTextboxOpener) and keyboard_check_pressed(ord("Z")) {
	var instantiated = instance_create_depth(0, 0, -9999, objTextbox);
	instantiated.text = text;
}