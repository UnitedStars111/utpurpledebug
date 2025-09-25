if swit = false {
	if place_meeting(x, y, objAstral) {
		swit = true;
		image_index = 1;
		image_speed = 1;
	} else {
		image_index = 0;
		swit = false;
	}
}