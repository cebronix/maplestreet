/// @description 

if (global.nameEditOpen == false) {
	create_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

	global.create_index += create_move;
	if (global.create_index < 0) global.create_index = global.create_rows -1;
	if (global.create_index > global.create_rows - 1) global.create_index = 0;
	
	switch (global.create_index) {
		case 0:
			part_loc_x = 260;
			part_loc_y = 130;
		break;
		case 1:
			part_loc_x = 260;
			part_loc_y = 210;
		break;
		case 2:
			part_loc_x = 260;
			part_loc_y = 290;
		break;
	}

	if (global.create_index != last_selected) {
		part_particles_create(particle_effects, part_loc_x, part_loc_y, box_flash, 1);
	}

	last_selected = global.create_index;

}

if (global.create_index == 2) && (global.partIsSelected == false) {
	parts_move = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);

	global.parts_index += parts_move;
	if (global.parts_index < 0) global.parts_index = global.parts_cols -1;
	if (global.parts_index > global.parts_cols - 1) global.parts_index = 0;
	
	switch (global.parts_index) {
		case 0:
			part_loc_x = 120;
			part_loc_y = 290;
		break;
		case 1:
			part_loc_x = 176;
			part_loc_y = 290;
		break;
		case 2:
			part_loc_x = 232;
			part_loc_y = 290;
		break;
		case 3:
			part_loc_x = 288;
			part_loc_y = 290;
		break;
		case 4:
			part_loc_x = 344;
			part_loc_y = 290;
		break;
		case 5:
			part_loc_x = 400;
			part_loc_y = 290;
		break;
	}

	if (global.parts_index != last_part_selected) {
		part_particles_create(particle_effects, part_loc_x, part_loc_y, part_flash, 1);
	}

	last_part_selected = global.parts_index;

}