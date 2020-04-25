/// @description 

selected = !selected;
if(selected == true) {
	global.sel_spl_part = spl_part.ha;
	image_blend = make_color_rgb(0,0,0);
} else {
	global.sel_spl_part = spl_part.noone;
	image_blend = make_colour_rgb(255, 255, 255);
}