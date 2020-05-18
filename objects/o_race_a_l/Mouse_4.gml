/// @description
if (global.create_index == 1) {
	global.raceHasBeenSelected = true;
	global.sel_race -= 1;
	if (global.sel_race < 0) {
		global.sel_race = 4;
	}
}