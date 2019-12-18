/// @desc process_attack(sprite, hitbox, damage)
/// @arg sprite
/// @arg hitbox
/// @arg damage

// start attack
if (sprite_index != argument0){
	sprite_index = argument0
	image_speed = 1
	ds_list_clear(hit_by_attack)
}

mask_index = argument1
var _hit_by_attack_now = ds_list_create()
var _hits = instance_place_list(x, y, obj_enemy, _hit_by_attack_now, false)

if (_hits > 0){
	// global.haskilled = true
	for (i = 0; i < _hits; i++){
		// if this instance has not yet been hit by this attack
		var _hit_id = _hit_by_attack_now[| i] // ds_list_find_value(_hit_by_attack_now, i)
		
		if (ds_list_find_index(hit_by_attack, _hit_id) == -1){
			ds_list_add(hit_by_attack, _hit_id)
			with (_hit_id){
				hp -= argument2
				global.flash = 3
				hitfrom = other.direction
			}
		}	
	}
}

ds_list_destroy(_hit_by_attack_now)
mask_index = spr_player
