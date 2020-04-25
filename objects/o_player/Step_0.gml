//--------Update Input
input_left = keyboard_check(vk_left);
input_right = keyboard_check(vk_right);
input_up = keyboard_check(vk_up);
input_down = keyboard_check(vk_down);
input_run = keyboard_check(vk_shift);

//--------Reset Move Variable
moveX = 0;
moveY = 0;

//--------Alter Speed
if(input_run) {
	image_speed = 12;
	spd = r_spd;
} else {
	image_speed = 6;
	spd = n_spd;
}

//--------Intended Movement
moveX = (input_right - input_left) * spd;
if(moveX == 0) {
	moveY = (input_down - input_up) * spd;
}

//--------Apply Movement
x += moveX;
y += moveY;
	
//--------Change solid sprite as moved
xx = 0;
yy = 0;
	
if(moveX == 0) && (moveY == 0) {
	image_speed = 1;
	if(keyboard_check_released(vk_down)) {
		if(global.sel_race != p_race.splice) {
			global.p_sprite = ds_grid_get(global.p_grid,xx,yy);
		} else {
			global.rl_sprite = ds_grid_get(global.rl_grid, global.rl, yy);
			global.ll_sprite = ds_grid_get(global.ll_grid, global.ll, yy);
			global.ra_sprite = ds_grid_get(global.ra_grid, global.ra, yy);
			global.la_sprite = ds_grid_get(global.la_grid, global.la, yy);
			global.t_sprite = ds_grid_get(global.t_grid, global.t, yy);
			global.ta_sprite = ds_grid_get(global.ta_grid, global.ta, yy);
			global.h_sprite = ds_grid_get(global.h_grid, global.h, yy);
			global.ha_sprite = ds_grid_get(global.ha_grid, global.ha, yy);
		}
	} else if(keyboard_check_released(vk_up)) {
		if(global.sel_race != p_race.splice) {
			global.p_sprite = ds_grid_get(global.p_grid,xx,yy+1);
		} else {
			global.rl_sprite = ds_grid_get(global.rl_grid, global.rl, yy+1);
			global.ll_sprite = ds_grid_get(global.ll_grid, global.ll, yy+1);
			global.ra_sprite = ds_grid_get(global.ra_grid, global.ra, yy+1);
			global.la_sprite = ds_grid_get(global.la_grid, global.la, yy+1);
			global.t_sprite = ds_grid_get(global.t_grid, global.t, yy+1);
			global.ta_sprite = ds_grid_get(global.ta_grid, global.ta, yy+1);
			global.h_sprite = ds_grid_get(global.h_grid, global.h, yy+1);
			global.ha_sprite = ds_grid_get(global.ha_grid, global.ha, yy+1);
		}
	} else if(keyboard_check_released(vk_left)) {
		if(global.sel_race != p_race.splice) {
			global.p_sprite = ds_grid_get(global.p_grid,xx+1,yy);
		} else {
			global.rl_sprite = ds_grid_get(global.rl_grid, global.rl, yy+2);
			global.ll_sprite = ds_grid_get(global.ll_grid, global.ll, yy+2);
			global.ra_sprite = ds_grid_get(global.ra_grid, global.ra, yy+2);
			global.la_sprite = ds_grid_get(global.la_grid, global.la, yy+2);
			global.t_sprite = ds_grid_get(global.t_grid, global.t, yy+2);
			global.ta_sprite = ds_grid_get(global.ta_grid, global.ta, yy+2);
			global.h_sprite = ds_grid_get(global.h_grid, global.h, yy+2);
			global.ha_sprite = ds_grid_get(global.ha_grid, global.ha, yy+2);
		}
	} else if(keyboard_check_released(vk_right)) {
		if(global.sel_race != p_race.splice) {
			global.p_sprite = ds_grid_get(global.p_grid,xx+1,yy+1);
		} else {
			global.rl_sprite = ds_grid_get(global.rl_grid, global.rl, yy+3);
			global.ll_sprite = ds_grid_get(global.ll_grid, global.ll, yy+3);
			global.ra_sprite = ds_grid_get(global.ra_grid, global.ra, yy+3);
			global.la_sprite = ds_grid_get(global.la_grid, global.la, yy+3);
			global.t_sprite = ds_grid_get(global.t_grid, global.t, yy+3);
			global.ta_sprite = ds_grid_get(global.ta_grid, global.ta, yy+3);
			global.h_sprite = ds_grid_get(global.h_grid, global.h, yy+3);
			global.ha_sprite = ds_grid_get(global.ha_grid, global.ha, yy+3);
		}
	}
} else if (moveY < 0) {
	if(global.sel_race != p_race.splice) {
		global.p_sprite = ds_grid_get(global.p_grid,xx+2,yy+1);
	} else {
		global.rl_sprite = ds_grid_get(global.rl_grid, global.rl, yy+5);
		global.ll_sprite = ds_grid_get(global.ll_grid, global.ll, yy+5);
		global.ra_sprite = ds_grid_get(global.ra_grid, global.ra, yy+5);
		global.la_sprite = ds_grid_get(global.la_grid, global.la, yy+5);
		global.t_sprite = ds_grid_get(global.t_grid, global.t, yy+5);
		global.ta_sprite = ds_grid_get(global.ta_grid, global.ta, yy+5);
		global.h_sprite = ds_grid_get(global.h_grid, global.h, yy+5);
		global.ha_sprite = ds_grid_get(global.ha_grid, global.ha, yy+5);
	}
} else if (moveY > 0) {
	if(global.sel_race != p_race.splice) {
		global.p_sprite = ds_grid_get(global.p_grid,xx+2,yy);
	} else {
		global.rl_sprite = ds_grid_get(global.rl_grid, global.rl, yy+4);
		global.ll_sprite = ds_grid_get(global.ll_grid, global.ll, yy+4);
		global.ra_sprite = ds_grid_get(global.ra_grid, global.ra, yy+4);
		global.la_sprite = ds_grid_get(global.la_grid, global.la, yy+4);
		global.t_sprite = ds_grid_get(global.t_grid, global.t, yy+4);
		global.ta_sprite = ds_grid_get(global.ta_grid, global.ta, yy+4);
		global.h_sprite = ds_grid_get(global.h_grid, global.h, yy+4);
		global.ha_sprite = ds_grid_get(global.ha_grid, global.ha, yy+4);
	}
} else if (moveX > 0) {
	if(global.sel_race != p_race.splice) {
		global.p_sprite = ds_grid_get(global.p_grid,xx+3,yy+1);
	} else {
		global.rl_sprite = ds_grid_get(global.rl_grid, global.rl, yy+7);
		global.ll_sprite = ds_grid_get(global.ll_grid, global.ll, yy+7);
		global.ra_sprite = ds_grid_get(global.ra_grid, global.ra, yy+7);
		global.la_sprite = ds_grid_get(global.la_grid, global.la, yy+7);
		global.t_sprite = ds_grid_get(global.t_grid, global.t, yy+7);
		global.ta_sprite = ds_grid_get(global.ta_grid, global.ta, yy+7);
		global.h_sprite = ds_grid_get(global.h_grid, global.h, yy+7);
		global.ha_sprite = ds_grid_get(global.ha_grid, global.ha, yy+7);
	}
} else if (moveX < 0) {
	if(global.sel_race != p_race.splice) {
		global.p_sprite = ds_grid_get(global.p_grid,xx+3,yy);
	} else {
		global.rl_sprite = ds_grid_get(global.rl_grid, global.rl, yy+6);
		global.ll_sprite = ds_grid_get(global.ll_grid, global.ll, yy+6);
		global.ra_sprite = ds_grid_get(global.ra_grid, global.ra, yy+6);
		global.la_sprite = ds_grid_get(global.la_grid, global.la, yy+6);
		global.t_sprite = ds_grid_get(global.t_grid, global.t, yy+6);
		global.ta_sprite = ds_grid_get(global.ta_grid, global.ta, yy+6);
		global.h_sprite = ds_grid_get(global.h_grid, global.h, yy+6);
		global.ha_sprite = ds_grid_get(global.ha_grid, global.ha, yy+6);
	}
}
