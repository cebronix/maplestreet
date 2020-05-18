/// @description 

//temporary quit
if (keyboard_check(vk_escape)) {
	game_end();
}

//temporary start
if(room = r_player_create) {
	if((keyboard_check(vk_control)) && (keyboard_check(vk_enter))) {
		room_goto_next();
	}
}


#region DEFINE KEYS

global.PL = false;
global.PR = false;
global.PU = false;
global.PD = false;

global.POK = false;
global.PCAN = false;
global.PSEL = false;

global.heldLeft = false;
global.heldRight = false;
global.heldUp = false;
global.heldDown = false;

global.relLeft = false;
global.relRight = false;
global.relUp = false;
global.relDown = false;

#endregion
#region PLAYER INPUT
	
//HELD
if (keyboard_check(vk_left)) {
	global.heldLeft = true;
} else {
	global.heldLeft = false;
}
	
if (keyboard_check(vk_right)) {
	global.heldRight = true;
} else {
	global.heldRight = false;
}
	
if (keyboard_check(vk_up)) {
	global.heldUp = true;
} else {
	global.heldUp = false;
}
	
if (keyboard_check(vk_down)) {
	global.heldDown = true;
} else {
	global.heldDown = false;
}
	
//RELEASED
if (keyboard_check_released(vk_left)) {
	global.relLeft = true;
} else {
	global.relLeft = false;
}
	
if (keyboard_check_released(vk_right)) {
	global.relRight = true;
} else {
	global.relRight = false;
}
	
if (keyboard_check_released(vk_up)) {
	global.relUp = true;
} else {
	global.relUp = false;
}
	
if (keyboard_check_released(vk_down)) {
	global.relDown = true;
} else {
	global.relDown = false;
}
	
//PRESSED
if (keyboard_check_pressed(vk_left)) {
	global.PL = true;
} else { 
	global.PL = false;
}

if (keyboard_check_pressed(vk_right)) {
	global.PR = true;
} else { 
	global.PR = false;
}

if (keyboard_check_pressed(vk_up)) {
	global.PU = true;
} else { 
	global.PU = false;
}

if (keyboard_check_pressed(vk_down)) {
	global.PD = true;
} else { 
	global.PD = false;
}

if (keyboard_check_pressed(vk_enter)) {
	global.POK = true;
} else { 
	global.POK = false;
}

if (keyboard_check_pressed(vk_backspace)) {
	global.PCAN = true;
} else { 
	global.PCAN = false;
}
	
if (keyboard_check_pressed(vk_shift)) {
	global.PSEL = true;
} else { 
	global.PSEL = false;
}

#endregion