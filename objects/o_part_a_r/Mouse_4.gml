/// @description 
if (global.create_index == 2) && (global.partIsSelected == true) {
	global.sel_spl_part_race += 1;
	if (global.sel_spl_part_race > 3) {
		global.sel_spl_part_race = 0;
	}
}