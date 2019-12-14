// move player towards center
layer_x("title_assets", min(layer_get_x("title_assets") + 1, RES_W * 0.5 - 32))

// progress text
letters += spd
text = string_copy(endtext[currentline], 1, floor(letters))

// next line
if (letters >= length) && keyboard_check_pressed(vk_anykey){
	if (currentline + 1 == array_length_1d(endtext)){
		slide_transition(TRANS_MODE.RESTART)	
	}
	else{
		currentline ++
		letters = 0
		length = string_length(endtext[currentline])
	}
}

