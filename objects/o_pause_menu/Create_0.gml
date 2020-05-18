/// @description 

menu_x = room_width / 2;
menu_y = y;
button_h = 24;
button_w = 225;
button_padding = 8;

// Buttons
button[0] = "SAVE GAME";
button[1] = "LOAD GAME";
button[2] = "OPTIONS";
button[3] = "RETURN";
button[4] = "EXIT";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

var i = 0;
repeat(buttons) {
	unfold[i] = 0;
	i++;	
}

#region PARTICLES

particle_effects = part_system_create();
part_system_depth(particle_effects, -1000);

box_flash = part_type_create();
part_type_shape(box_flash, pt_shape_line);
part_type_size(box_flash, 5, 5, -.02, 0);
part_type_color3(box_flash, c_red,c_orange,c_red);
part_type_alpha3(box_flash, .3, 0.5, 0);
part_type_blend(box_flash, true);
part_type_life(box_flash, 20, 20);

#endregion