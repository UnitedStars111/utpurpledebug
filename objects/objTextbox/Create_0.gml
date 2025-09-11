// textbox parametres

textbox_width = 289;
textbox_height = 76;
border = 8;
line_sep = 15;
line_width = textbox_width - border*2;
txtb_sprite = sprTextbox;
txtb_image = 0;
txtb_image_spd = 0;

// text
page = 0;
page_number = 0;
text[0] = "example";

text_length[0] = string_length(text[0]);
draw_char = 0;
text_speed = 0;

setup = false;
confirm_key = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter);
skip_key = keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift);