textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 160;
confirm_key = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter);
skip_key = keyboard_check_pressed(ord("X"));

if setup == false {
	setup = true;
	draw_set_font(Dialoguefont);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	// loop thru pages
	page_number = array_length(text);
	for (var p = 0; p < page_number; p++) {
		text_length[p] = string_length(text[p]);
		
		// text x position (no character)
		text_x_offset[p] = 32;
	}
}
	
// typing
if draw_char < text_length[page] {
	draw_char += text_speed;
	draw_char = clamp(draw_char, 0, text_length[page]);
}

// flip thru pages
if confirm_key {
	// if done
	if draw_char ==  text_length[page] {
		if page < page_number - 1 {
			page++;
			draw_char = 0;
		} else {
			instance_destroy();
		}
	} else {
		// not done typing
		draw_char = text_length[page];
	}
}
	
// draw textbox
txtb_image += txtb_image_spd;
txtb_spr_w = sprite_get_width(txtb_sprite);
txtb_spr_h = sprite_get_height(txtb_sprite);

// textbox back
draw_sprite_ext(txtb_sprite, txtb_image, textbox_x + text_x_offset[page], textbox_y, textbox_width / txtb_spr_w, textbox_height / txtb_spr_w, 0, c_white, 1);

// draw text
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + border, _drawtext, line_sep, line_width);