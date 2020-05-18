/// @description 

#region MOVE THE CURSOR
if (global.nameEditOpen != false) {
	if (!buttonReady) {
		if (global.heldLeft || global.heldRight || global.heldUp || global.heldDown) {
			buttonTimer ++;
		}
		
		if (buttonTimer >= timeTillButtonReady) {
			buttonTimer = 0;
			buttonReady = true;
		}
		
		if (global.PL || global.PR || global.PU || global.PD) {
			buttonTimer = 0;
			buttonReady = true;
		}
	}
	
	if (global.relLeft || global.relRight || global.relUp || global.relDown) {
		buttonTimer = 0;
		buttonReady = false;
	}
	
	if (buttonReady) {

		if (global.PL || global.heldLeft) {
			if (gridX - 1) < 0 {
				gridX = (xLetters - 1);
			} else {
				gridX --;
			}
		}

		if (global.PR || global.heldRight) {
			if (gridX + 1) >= xLetters {
				gridX = 0;
			} else {
				gridX ++;
			}
		}

		if (global.PU || global.heldUp) {
			if (gridY - 1) < 0 {
				gridY = (yLetters - 1);
			} else {
				gridY --;
			}
		}

		if (global.PD || global.heldDown) {
			if (gridY + 1) >= yLetters {
				gridY = 0;
			} else {
				gridY ++;
			}
		}
		
		buttonReady = false;
	}

#endregion

#region PRESSED OK
	if (global.nameEditOpen) {
		if (global.POK) {
	
			var newLetter = a_letters[gridX, gridY];
	
			//Save the new name to the Hero
			if (newLetter == "OK") {
				global.p_name = currentName;
				global.nameEditOpen = false;
				global.nameHasBeenEdited = true;
			}
		
			letterCount = string_length(currentName);
	
			//Add letter to name (Check it's not the OK button before adding)
			if (newLetter != "OK") && (letterCount < MAX_LETTERS_IN_NAME) {
			
				if (showLowerCase) && (newLetter != " ") {
					uniCode = ord(newLetter) + 32;
					newLetter = chr(uniCode);
				}
			
				currentName += newLetter;
			}
		}
	}

#endregion

#region CANCEL

	if (global.PCAN) {
		//Check we have at least 1 letter in the name
		letterCount = string_length(currentName);
	
		//If we have a t least 1, delete it
		if (letterCount >= 1) {
			currentName = string_delete(currentName, letterCount, 1);
		}
	}

#endregion

#region PRESSED SHIFT

	if (global.PSEL) {
		showLowerCase = !showLowerCase;
	}
}
#endregion