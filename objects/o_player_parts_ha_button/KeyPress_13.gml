/// @description

if (global.create_index == 2) && (global.parts_index == 5) {
	selected = !selected;
	if(selected == true) {
		global.sel_spl_part = spl_part.ha;
		image_index = 1;
		global.partIsSelected = true;
	} else {
		global.sel_spl_part = spl_part.noone;
		image_index = 0;
		global.partIsSelected = false
	}
}