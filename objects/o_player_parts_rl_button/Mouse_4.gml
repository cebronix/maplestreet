/// @description 

selected = !selected;
if(selected == true) {
	global.sel_spl_part = spl_part.rl;
	image_blend = make_colour_hsv(255, 255, random(255));
} else {
	global.sel_spl_part = spl_part.noone;
	image_blend = make_colour_hsv(255, 255, 255);
}