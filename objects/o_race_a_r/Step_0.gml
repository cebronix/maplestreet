/// @description 

if (keyboard_check_pressed(vk_right)) {
	global.sel_race += 1;
	if (global.sel_race > 4) {
		global.sel_race = 0;
	}
}