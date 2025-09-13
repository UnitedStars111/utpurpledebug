<<<<<<< HEAD
if place_meeting(objAstral.x + xspd, objAstral.y, objSpriteChange) {
=======
if place_meeting(objAstral.x + objAstral.xspd, objAstral.y, objSpriteChange) {
>>>>>>> 2e9c3ddf1ac60b7685d7419d0c5c7d6ea7c6b4d3
	gridx = floor(objAstral.x / 20);
	gridy = floor(objAstral.y / 20);
	
	var lay_id = layer_get_id("Interactables");
	var map_id = layer_tilemap_get_id("Interactables");
	
	tilemap_set(map_id, target_tile, gridx, gridy);
<<<<<<< HEAD
}
=======
}
>>>>>>> 2e9c3ddf1ac60b7685d7419d0c5c7d6ea7c6b4d3
