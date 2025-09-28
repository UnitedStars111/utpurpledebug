typedElement = { 	
	Button: [224,225],
	Lever: [226, 227]
};

currentElement = noone;
typed = noone;
event = 0;

if room = rmRuins2 {
	if event = 3 {
		instance_destroy(objDoor);
	} else {
		event = 0;
	}
}