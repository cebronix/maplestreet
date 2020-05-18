/// @description 

if (global.nameEditOpen == false) {

	if (global.create_index == 0) or (global.nameHasBeenEdited == true) {
		draw_set_color(c_white);
		draw_set_alpha(1);
		NineSliceBox(s_ui_9slice, 100, 100, 412, 152);
	} else {
		draw_set_color(c_gray);
		draw_set_alpha(.25);
		NineSliceBox(s_ui_9slice, 100, 100, 412, 152);
	}
	
	startY = 112;
	startX = 265;

	//Draw Current Name
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text(startX, startY, currentName);
	draw_set_halign(fa_left);
} else {
	draw_set_color(c_white);
	draw_set_alpha(1);
	NineSliceBox(s_ui_9slice, 100, 100, 576, 270);

	draw_set_font(f_museo);
	fontSize = font_get_size(f_museo);
	BUFFER = ceil(fontSize / 2);

	#region DRAW CURRENT NAME

	startY = 112;
	startX = 122;

	//Draw Current Name
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(startX, startY, currentName);

	#endregion

	#region DRAW LETTERS

	startY = 162;
	startX = 122;
	var charCount = 1;

	for (var yy = 0; yy < yLetters; yy ++) {
		for (var xx = 0; xx < xLetters; xx ++) {
			#region CODE INSIDE FOR LOOP
		
			var letter = a_letters[xx, yy];
			
			if (showLowerCase) && (charCount <= 26) {
				uniCode = ord(letter) + 32;
				letter = chr(uniCode);
			}
		
			var drawX = startX + (xx * (fontSize * 2));
			var drawY = startY + (yy * (fontSize + BUFFER));
		
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_text(drawX, drawY, letter);
		
			if (xx == gridX && yy == gridY) draw_sprite(s_nav_arrow, 0, drawX - 8, drawY + 15);
		
			charCount ++;
		
			#endregion
		}
	}
}

#endregion