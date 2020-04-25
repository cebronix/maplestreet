/// @description 

if (keyboard_check_pressed(vk_left)) {
	global.sel_race -= 1;
	if (global.sel_race < 0) {
		global.sel_race = 4;
	}
}