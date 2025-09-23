switch(typed)
{
	case "Buttons":
		var _get_tile = layer_tilemap_get_id("Interactables");
		tilemap_set(_get_tile, currentElement[pressed], floor(x / 20), floor(y / 20));
		break;
		
}