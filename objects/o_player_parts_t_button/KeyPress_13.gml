/// @description 

if (global.create_index == 2) && (global.parts_index == 3) {
	selected = !selected;
	if(selected == true) {
		global.sel_spl_part = spl_part.t;
		image_blend = c_black;
		global.partIsSelected = true;
	} else {
		global.sel_spl_part = spl_part.noone;
		image_blend = c_white;
		global.partIsSelected = false;
	}
}