if place_meeting(objAstral.x + objAstral.xspd, objAstral.y, objTextboxOpener) && objTextbox.confirmkey = true {
	var instantiated = instance_create_depth(0, 0, -999, objTextbox);
	instantiated.text = text;
}