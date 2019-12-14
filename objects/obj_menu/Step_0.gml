/// @desc Control menu

// item ease in
menu_x += (menu_x_target - menu_x) / menu_speed

// keyboard controls
if (menu_control){
	if (keyboard_check_pressed(vk_up)){
		menu_cursor++	
		if (menu_cursor >= menu_items) menu_cursor = 0 
	}
	
	if (keyboard_check_pressed(vk_down)){
		menu_cursor--	
		if (menu_cursor < 0) menu_cursor = menu_items - 1 
	}
	
	if (keyboard_check_pressed(vk_enter)){
		menu_option_trigger()
	}
	
	var mouse_y_gui = device_mouse_y_to_gui(0)
	if (mouse_y_gui < menu_y) && (mouse_y_gui > menu_top){ // y is opposite, i know its weird
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 1.5)// div is whole number division
		
		if (mouse_check_button_pressed((mb_left))){
			menu_option_trigger()
		}
	}
}

if (menu_x > gui_width + 150) && (menu_committed != -1){
	switch (menu_committed){
		case 2: default: slide_transition(TRANS_MODE.GOTO, rm_1); break // Tristan i dunno why enum next doesn't work
		case 1:
		{
			if (!file_exists(SAVEFILE)){
				slide_transition(TRANS_MODE.GOTO, rm_1)	
			}
			else{
				var file = file_text_open_read(SAVEFILE)
				var target = file_text_read_real(file)
				global.kills = file_text_read_real(file)
				global.hasgun = file_text_read_real(file)
				file_text_close(file)
				slide_transition(TRANS_MODE.GOTO, target)
			}
		}
		break
		case 0: game_end(); break;
	}
}

