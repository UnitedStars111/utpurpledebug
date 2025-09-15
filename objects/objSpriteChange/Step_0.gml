if place_meeting(objAstral.x + objAstral.xspd, objAstral.y, objSpriteChange) {
	gridx = floor(objAstral.x / 20);
	gridy = floor(objAstral.y / 20);
	
	var lay_id = layer_get_id("Interactables");
	var map_id = layer_tilemap_get_id("Interactables");
	
	tilemap_set(map_id, target_tile, gridx, gridy);
}