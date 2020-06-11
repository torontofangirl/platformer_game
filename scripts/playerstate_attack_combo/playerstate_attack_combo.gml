hsp = 0
vsp = 0

var _damage_combo = 3

process_attack(spr_attack_combo, spr_attack_combo_hb, _damage_combo)

if (animation_end()){
	sprite_index = spr_player
	state = PLAYERSTATE.FREE
}




