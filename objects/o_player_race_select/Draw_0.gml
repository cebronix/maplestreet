/// @description 
draw_set_font(f_museo);
layer_set_visible("player_parts_select", false);
global.p_grid = robot_grid;
xx = 0;
yy = 0;

if (global.create_index != 1) && (global.raceHasBeenSelected == false) {
	draw_set_color(c_gray);
	draw_set_alpha(0.25);
	draw_text_colour(220, 193, "RACE", c_gray, c_gray, c_gray, c_gray, 0.85);
	NineSliceBox(s_ui_9slice, 100, 180, 412, 232);
	NineSliceBox(s_ui_9slice, 605, 125, 720, 285);
	o_race_a_r.visible = false;
	o_race_a_l.visible = false;
} else {
	draw_set_color(c_white);
	draw_set_alpha(1);
	NineSliceBox(s_ui_9slice, 100, 180, 412, 232);
	NineSliceBox(s_ui_9slice, 605, 125, 720, 285);
	draw_set_font(f_museo);
	o_race_a_r.visible = true;
	o_race_a_l.visible = true;

	#region Race Select
	switch (global.sel_race) {
		case p_race.robot:
			global.p_grid = robot_grid;
			draw_text_colour(210, 193, "ROBOT", c_white, c_white, c_white, c_white, 1);
			global.p_sprite = ds_grid_get(global.p_grid,xx,yy);
			draw_sprite_ext(global.p_sprite, image_index, 665, 265, 2, 2, 0, global.player_color, 1);
			global.create_rows = 2;
		break;
	
		case p_race.squid:
			global.p_grid = squid_grid;
			draw_text_colour(210, 193, "SQUID", c_white, c_white, c_white, c_white, 1);
			global.p_sprite = ds_grid_get(global.p_grid,xx,yy);
			draw_sprite_ext(global.p_sprite, image_index, 665, 265, 2, 2, 0, global.player_color, 1);
			global.create_rows = 2;
		break;
	
		case p_race.energy:
			global.p_grid = energy_grid;
			draw_text_colour(200, 193, "ENERGY", c_white, c_white, c_white, c_white, 1);
			global.p_sprite = ds_grid_get(global.p_grid,xx,yy);
			draw_sprite_ext(global.p_sprite, image_index, 665, 265, 2, 2, 0, global.player_color, 1);
			global.create_rows = 2;
		break;
	
		case p_race.bug:
			global.p_grid = bug_grid;
			draw_text_colour(225, 193, "BUG", c_white, c_white, c_white, c_white, 1);
			global.p_sprite = ds_grid_get(global.p_grid,xx,yy);
			draw_sprite_ext(global.p_sprite, image_index, 665, 265, 2, 2, 0, global.player_color, 1);
			global.create_rows = 2;
		break;
	#endregion
	#region Splice
		case p_race.splice:
			draw_text_colour(210, 193, "SPLICE", c_white, c_white, c_white, c_white, 1);
			layer_set_visible("player_parts_select", true);
			global.create_rows = 3;
			if (global.create_index == 2) {
				o_part_a_r.visible = true;
				o_part_a_l.visible = true;
			} else {
				o_part_a_r.visible = false;
				o_part_a_l.visible = false;
			}
			//Set the Parts
			switch(global.sel_spl_part) {
				#region Legs
				case spl_part.legs:
					switch (global.sel_spl_part_race) {
						case spl_part_race.robot:
							global.legs_sprite = ds_grid_get(global.legs_grid, xx, yy);
							global.legs = 0;
						break;
						case spl_part_race.squid:
							global.legs_sprite = ds_grid_get(global.legs_grid, xx+1, yy);
							global.legs = 1;
						break;
						case spl_part_race.energy:
							global.legs_sprite = ds_grid_get(global.legs_grid, xx+2, yy);
							global.legs = 2;
						break;
						case spl_part_race.bug:
							global.legs_sprite = ds_grid_get(global.legs_grid, xx+3, yy);
							global.legs = 3;
						break;
					}
				break;
				#endregion
				#region Torso
				case spl_part.t:
					switch (global.sel_spl_part_race) {
						case spl_part_race.robot:
							global.t_sprite = ds_grid_get(global.t_grid, xx, yy);
							global.t = 0;
						break;
						case spl_part_race.squid:
							global.t_sprite = ds_grid_get(global.t_grid, xx+1, yy);
							global.t = 1;
						break;
						case spl_part_race.energy:
							global.t_sprite = ds_grid_get(global.t_grid, xx+2, yy);
							global.t = 2;
						break;
						case spl_part_race.bug:
							global.t_sprite = ds_grid_get(global.t_grid, xx+3, yy);
							global.t = 3;
						break;
					}
				break;
				#endregion
				#region Right Arm
				case spl_part.ra:
					switch (global.sel_spl_part_race) {
						case spl_part_race.robot:
							global.ra_sprite = ds_grid_get(global.ra_grid, xx, yy);
							global.ra = 0;
						break;
						case spl_part_race.squid:
							global.ra_sprite = ds_grid_get(global.ra_grid, xx+1, yy);
							global.ra = 1;
						break;
						case spl_part_race.energy:
							global.ra_sprite = ds_grid_get(global.ra_grid, xx+2, yy);
							global.ra = 2;
						break;
						case spl_part_race.bug:
							global.ra_sprite = ds_grid_get(global.ra_grid, xx+3, yy);
							global.ra = 3;
						break;
					}
				break;
				#endregion
				#region Left Arm
				case spl_part.la:
					switch (global.sel_spl_part_race) {
						case spl_part_race.robot:
							global.la_sprite = ds_grid_get(global.la_grid, xx, yy);
							global.la = 0;
						break;
						case spl_part_race.squid:
							global.la_sprite = ds_grid_get(global.la_grid, xx+1, yy);
							global.la = 1;
						break;
						case spl_part_race.energy:
							global.la_sprite = ds_grid_get(global.la_grid, xx+2, yy);
							global.la = 2;
						break;
						case spl_part_race.bug:
							global.la_sprite = ds_grid_get(global.la_grid, xx+3, yy);
							global.la = 3;
						break;
					}
				break;
				#endregion
				#region Head
				case spl_part.h:
					switch (global.sel_spl_part_race) {
						case spl_part_race.robot:
							global.h_sprite = ds_grid_get(global.h_grid, xx, yy);
							global.h = 0;
						break;
						case spl_part_race.squid:
							global.h_sprite = ds_grid_get(global.h_grid, xx+1, yy);
							global.h = 1;
						break;
						case spl_part_race.energy:
							global.h_sprite = ds_grid_get(global.h_grid, xx+2, yy);
							global.h = 2;
						break;
						case spl_part_race.bug:
							global.h_sprite = ds_grid_get(global.h_grid, xx+3, yy);
							global.h = 3;
						break;
					}
				break;
				#endregion
				#region Head Acc
				case spl_part.ha:
					switch (global.sel_spl_part_race) {
						case spl_part_race.robot:
							global.ha_sprite = ds_grid_get(global.ha_grid, xx, yy);
							global.ha = 0;
						break;
						case spl_part_race.squid:
							global.ha_sprite = ds_grid_get(global.ha_grid, xx+1, yy);
							global.ha = 1;
						break;
						case spl_part_race.energy:
							global.ha_sprite = ds_grid_get(global.ha_grid, xx+2, yy);
							global.ha = 2;
						break;
						case spl_part_race.bug:
							global.ha_sprite = ds_grid_get(global.ha_grid, xx+3, yy);
							global.ha = 3;
						break;
					}
				break;
				#endregion		
			break;
			}
			//Draw the parts
			draw_sprite_ext(global.legs_sprite, image_index, 665, 265, 2, 2, 0, global.player_color, 1);
			draw_sprite_ext(global.t_sprite, image_index, 665, 265, 2, 2, 0, global.player_color, 1);
			draw_sprite_ext(global.ra_sprite, image_index, 665, 265, 2, 2, 0, global.player_color, 1);
			draw_sprite_ext(global.la_sprite, image_index, 665, 265, 2, 2, 0, global.player_color, 1);
			draw_sprite_ext(global.h_sprite, image_index, 665, 265, 2, 2, 0, global.player_color, 1);
			draw_sprite_ext(global.ha_sprite, image_index, 665, 265, 2, 2, 0, global.player_color, 1);
		break;
	}
	#endregion
}