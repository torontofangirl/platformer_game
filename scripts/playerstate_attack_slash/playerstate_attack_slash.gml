hsp = 0
vsp = 0

process_attack(spr_attack_slash, spr_attack_slash_hb, 3)

// trigger combo
if (key_attack) && (image_index > 2) && (image_index < 6){
	state = PLAYERSTATE.ATTACK_COMBO
}

if (animation_end()){
	sprite_index = spr_player
	state = PLAYERSTATE.FREE
}


 

