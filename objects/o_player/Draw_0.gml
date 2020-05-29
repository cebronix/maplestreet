/// @description draw the character
if(moveX == 0) && (moveY == 0) {
	image_speed = 1;
	if(global.relDown = true) {
		if(global.sel_race != p_race.splice) {
			global.p_sprite = ds_grid_get(global.p_grid,xx,yy);
		} else {
			global.legs_sprite = ds_grid_get(global.legs_grid, global.legs, yy);
			global.ra_sprite = ds_grid_get(global.ra_grid, global.ra, yy);
			global.la_sprite = ds_grid_get(global.la_grid, global.la, yy);
			global.t_sprite = ds_grid_get(global.t_grid, global.t, yy);
			global.h_sprite = ds_grid_get(global.h_grid, global.h, yy);
			global.ha_sprite = ds_grid_get(global.ha_grid, global.ha, yy);
		}
	} else if(global.relUp = true) {
		if(global.sel_race != p_race.splice) {
			global.p_sprite = ds_grid_get(global.p_grid,xx,yy+1);
		} else {
			global.legs_sprite = ds_grid_get(global.legs_grid, global.legs, yy+1);
			global.ra_sprite = ds_grid_get(global.ra_grid, global.ra, yy+1);
			global.la_sprite = ds_grid_get(global.la_grid, global.la, yy+1);
			global.t_sprite = ds_grid_get(global.t_grid, global.t, yy+1);
			global.h_sprite = ds_grid_get(global.h_grid, global.h, yy+1);
			global.ha_sprite = ds_grid_get(global.ha_grid, global.ha, yy+1);
		}
	} else if(global.relLeft = true) {
		if(global.sel_race != p_race.splice) {
			global.p_sprite = ds_grid_get(global.p_grid,xx+1,yy);
		} else {
			global.legs_sprite = ds_grid_get(global.legs_grid, global.legs, yy+2);
			global.ra_sprite = ds_grid_get(global.ra_grid, global.ra, yy+2);
			global.la_sprite = ds_grid_get(global.la_grid, global.la, yy+2);
			global.t_sprite = ds_grid_get(global.t_grid, global.t, yy+2);
			global.h_sprite = ds_grid_get(global.h_grid, global.h, yy+2);
			global.ha_sprite = ds_grid_get(global.ha_grid, global.ha, yy+2);
		}
	} else if(global.relRight = true) {
		if(global.sel_race != p_race.splice) {
			global.p_sprite = ds_grid_get(global.p_grid,xx+1,yy+1);
		} else {
			global.legs_sprite = ds_grid_get(global.legs_grid, global.legs, yy+3);
			global.ra_sprite = ds_grid_get(global.ra_grid, global.ra, yy+3);
			global.la_sprite = ds_grid_get(global.la_grid, global.la, yy+3);
			global.t_sprite = ds_grid_get(global.t_grid, global.t, yy+3);
			global.h_sprite = ds_grid_get(global.h_grid, global.h, yy+3);
			global.ha_sprite = ds_grid_get(global.ha_grid, global.ha, yy+3);
		}
	}
} else if (moveY < 0) {
	if(global.sel_race != p_race.splice) {
		global.p_sprite = ds_grid_get(global.p_grid,xx+2,yy+1);
	} else {
		global.legs_sprite = ds_grid_get(global.legs_grid, global.legs, yy+5);
		global.ra_sprite = ds_grid_get(global.ra_grid, global.ra, yy+5);
		global.la_sprite = ds_grid_get(global.la_grid, global.la, yy+5);
		global.t_sprite = ds_grid_get(global.t_grid, global.t, yy+5);
		global.h_sprite = ds_grid_get(global.h_grid, global.h, yy+5);
		global.ha_sprite = ds_grid_get(global.ha_grid, global.ha, yy+5);
	}
} else if (moveY > 0) {
	if(global.sel_race != p_race.splice) {
		global.p_sprite = ds_grid_get(global.p_grid,xx+2,yy);
	} else {
		global.legs_sprite = ds_grid_get(global.legs_grid, global.legs, yy+4);
		global.ra_sprite = ds_grid_get(global.ra_grid, global.ra, yy+4);
		global.la_sprite = ds_grid_get(global.la_grid, global.la, yy+4);
		global.t_sprite = ds_grid_get(global.t_grid, global.t, yy+4);
		global.h_sprite = ds_grid_get(global.h_grid, global.h, yy+4);
		global.ha_sprite = ds_grid_get(global.ha_grid, global.ha, yy+4);
	}
} else if (moveX > 0) {
	if(global.sel_race != p_race.splice) {
		global.p_sprite = ds_grid_get(global.p_grid,xx+3,yy+1);
	} else {
		global.legs_sprite = ds_grid_get(global.legs_grid, global.legs, yy+7);
		global.ra_sprite = ds_grid_get(global.ra_grid, global.ra, yy+7);
		global.la_sprite = ds_grid_get(global.la_grid, global.la, yy+7);
		global.t_sprite = ds_grid_get(global.t_grid, global.t, yy+7);
		global.h_sprite = ds_grid_get(global.h_grid, global.h, yy+7);
		global.ha_sprite = ds_grid_get(global.ha_grid, global.ha, yy+7);
	}
} else if (moveX < 0) {
	if(global.sel_race != p_race.splice) {
		global.p_sprite = ds_grid_get(global.p_grid,xx+3,yy);
	} else {
		global.legs_sprite = ds_grid_get(global.legs_grid, global.legs, yy+6);
		global.ra_sprite = ds_grid_get(global.ra_grid, global.ra, yy+6);
		global.la_sprite = ds_grid_get(global.la_grid, global.la, yy+6);
		global.t_sprite = ds_grid_get(global.t_grid, global.t, yy+6);
		global.h_sprite = ds_grid_get(global.h_grid, global.h, yy+6);
		global.ha_sprite = ds_grid_get(global.ha_grid, global.ha, yy+6);
	}
}

//draw the sprite as one piece
if(global.sel_race != p_race.splice) {
	draw_sprite_ext(s_blob_shadow, 0, x, y, 1, 1, 0, global.player_color, 0.4);
	draw_sprite_ext(global.p_sprite, image_index, x, y, 1, 1, 0, global.player_color, 1);
} else {

//draw the sprite as mix and match
	draw_sprite_ext(s_blob_shadow, 0, x, y, 1, 1, 0, global.player_color, 0.4);
	draw_sprite_ext(global.legs_sprite, image_index, x, y, 1, 1, 0, global.player_color, 1);
	draw_sprite_ext(global.t_sprite, image_index, x, y, 1, 1, 0, global.player_color, 1);
	draw_sprite_ext(global.ra_sprite, image_index, x, y, 1, 1, 0, global.player_color, 1);
	draw_sprite_ext(global.la_sprite, image_index, x, y, 1, 1, 0, global.player_color, 1);
	draw_sprite_ext(global.h_sprite, image_index, x, y, 1, 1, 0, global.player_color, 1);
	draw_sprite_ext(global.ha_sprite, image_index, x, y, 1, 1, 0, global.player_color, 1);
}
