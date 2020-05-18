/// @description 

currentName = "Name";

#macro MAX_LETTERS_IN_NAME 12

showLowerCase = false;

gridX = 0;
gridY = 0;

letterString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ   ";

xLetters = 10;
yLetters = 3;

charCount = 1;

buttonReady = false;
buttonTimer = 0;
timeTillButtonReady = 10;

global.nameEditOpen = false;
global.nameHasBeenEdited = false;

for (var yy = 0; yy < yLetters; yy++) {
	for (var xx = 0; xx < xLetters; xx++) {
		if (charCount <= 29) {
			a_letters[xx, yy] = string_char_at(letterString, charCount);
		} else {
			a_letters[xx, yy] = "OK"
		}
		charCount ++;
	}
}