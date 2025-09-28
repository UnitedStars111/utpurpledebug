confirmkey = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_space);
skipkey = keyboard_check_pressed(ord("C"));
textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 160;

if setup = false {
	setup = true;
	objAstral.canMove = false;
	
	draw_set_font(Dialoguefont);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	page_number = array_length(text);
	for (var p = 0; p < page_number ; p++) {
		text_length[p] = string_length(text[p]);
		
		// no portrait
		text_x_offset[p] = 16;
	}
}

if draw_char < text_length[page] {
	draw_char += text_speed;
	draw_char = clamp(draw_char, 0, text_length[page])
}

if confirmkey {
	if draw_char == text_length[page] {
		if page < page_number - 1 {
			page++;
			draw_char = 0;
		} else {
			objAstral.canMove = true;
			instance_destroy();
		}
	}
} else if skipkey and draw_char != text_length[page] {
	draw_char = text_length[page];
}

_drawtext = string_copy(text[page], 1, draw_char);
textbox_sprite_w = sprite_get_width(textbox_sprite);
textbox_sprite_h = sprite_get_height(textbox_sprite);

draw_sprite_ext(textbox_sprite, textbox_image, textbox_x + text_x_offset[page], textbox_y, textbox_width / textbox_sprite_w, textbox_height / textbox_sprite_h, 0, c_white, 1);
draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + border, _drawtext, line_sep, line_width);

