/// @desc debug text/info
if (triggered){
	var _str = "remaining: "
	for (var i = 0; i < array_length_1d(remaining); i++){
		_str += string(remaining[i]) + "|"	
	}
	draw_set_text(c_black, fnt_default, fa_left, fa_bottom)
	draw_text(25, 75, _str + "\nwaves total: " + string(total_waves) + "\nwave now: " + string(current_wave))
}
