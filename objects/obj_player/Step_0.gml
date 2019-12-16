#region // get player input

if (hascontrol){
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"))
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"))
	key_jump = keyboard_check(vk_up) || keyboard_check(ord("W"))
	key_attack = keyboard_check_pressed(vk_space)
}
else{
	key_right = 0
	key_left = 0
	key_jump = 0
	key_attack = 0
	key_attack = 0
}


#endregion
// above functions will return 1 or 0, so -1 = left and 1 = right and 0 if you press nothing or both


#region //attack state machine
switch (state){
	case PLAYERSTATE.FREE: playerstate_free(); break
	case PLAYERSTATE.ATTACK_SLASH: playerstate_attack_slash(); break
	case PLAYERSTATE.ATTACK_COMBO: playerstate_attack_combo(); break
}
#endregion

