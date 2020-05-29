/// @description 

if (global.create_index == 2) {
	selected = !selected;
	if(selected == true) {
		global.sel_spl_part = spl_part.t;
		image_index = 1;
		global.partIsSelected = true;
	} else {
		global.sel_spl_part = spl_part.noone;
		image_index = 0;
		global.partIsSelected = false;
	}
} else {
	global.create_index = 2;
}