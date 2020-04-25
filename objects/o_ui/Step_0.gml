/// @description 

//temporary quit
if (keyboard_check(vk_escape)) {
	game_end();
}

//temporary start
if(room = r_player_create) {
	if(keyboard_check(vk_enter)) {
		room_goto_next();
	}
}