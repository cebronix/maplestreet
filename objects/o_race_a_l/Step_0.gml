/// @description 
if (global.create_index == 1) {
	if (keyboard_check_pressed(vk_left)) {
		global.raceHasBeenSelected = true;
		global.sel_race -= 1;
		if (global.sel_race < 0) {
			global.sel_race = 4;
		}
	}
}