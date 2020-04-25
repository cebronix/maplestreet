/// @description draw the character

//draw the sprite as one piece
if(global.sel_race != p_race.splice) {
	draw_sprite_ext(global.p_sprite, image_index, x, y, 1, 1, 0, c_white, 1);
} else {

//draw the sprite as mix and match
	draw_sprite_ext(global.rl_sprite, image_index, x, y, 1, 1, 0, c_white, 1);
	draw_sprite_ext(global.ll_sprite, image_index, x, y, 1, 1, 0, c_white, 1);
	draw_sprite_ext(global.t_sprite, image_index, x, y, 1, 1, 0, c_white, 1);
	draw_sprite_ext(global.ta_sprite, image_index, x, y, 1, 1, 0, c_white, 1);
	draw_sprite_ext(global.ra_sprite, image_index, x, y, 1, 1, 0, c_white, 1);
	draw_sprite_ext(global.la_sprite, image_index, x, y, 1, 1, 0, c_white, 1);
	draw_sprite_ext(global.h_sprite, image_index, x, y, 1, 1, 0, c_white, 1);
	draw_sprite_ext(global.ha_sprite, image_index, x, y, 1, 1, 0, c_white, 1);
}