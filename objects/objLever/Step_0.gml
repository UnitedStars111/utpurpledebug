with objDoor {
if place_meeting(objAstral.x, objAstral.y, objLever) {
	if Obj_Sprite_Draws.event = 3 {
		if correct = false {
			correct = true;
			instance_destroy(objDoor);
			event = 0;
		} else {
			correct = false;
			event = 0;
			Obj_Sprite_Draws.pressed = false;
		}
	}
}
}