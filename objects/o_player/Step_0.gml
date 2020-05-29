//--------Update Input
input_left = keyboard_check(vk_left);
input_right = keyboard_check(vk_right);
input_up = keyboard_check(vk_up);
input_down = keyboard_check(vk_down);
input_run = keyboard_check(vk_shift);

//--------Reset Move Variable
moveX = 0;
moveY = 0;

//--------Alter Speed
if(input_run) {
	image_speed = 12;
	spd = r_spd;
} else {
	image_speed = 6;
	spd = n_spd;
}

//--------Intended Movement
moveX = (input_right - input_left) * spd;
if(moveX == 0) {
	moveY = (input_down - input_up) * spd;
}

//--------Apply Movement
x += moveX;
y += moveY;
	
//--------Change solid sprite as moved
xx = 0;
yy = 0;
	
