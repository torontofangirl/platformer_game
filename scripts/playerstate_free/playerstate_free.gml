#region// calculate movement
var move = key_right - key_left

hsp = (move * walksp) + gunkickx
gunkickx = 0

vsp = (vsp + grv) + gunkicky
gunkicky = 0

// jumping
canjump--
if (canjump > 0) && (key_jump){		
	vsp = -7
	canjump = 0
}


// horizontal collision
if (place_meeting(x + hsp, y, obj_wall)){
	while (!place_meeting(x + sign(hsp), y, obj_wall)){
		x = x + sign(hsp)
	}
	hsp = 0
}
x = x + hsp

// vertical collision
if (place_meeting(x, y + vsp, obj_wall)){
	while (!place_meeting(x, y + sign(vsp), obj_wall)){
		y = y + sign(vsp)
	}
	vsp = 0
}
y = y + vsp
#endregion

#region// animation
if (!place_meeting(x, y + 1, obj_wall)){
	sprite_index = spr_player_a
	image_speed = 0
	if (sign(vsp) > 0) image_index = 1 else image_index = 0
	
}
else{
	canjump = 10
	if (sprite_index == spr_player_a){
		audio_sound_pitch(snd_land, choose(0.8, 1.0, 1.2))
		audio_play_sound(snd_land, 4, false)
		repeat(5){
			with (instance_create_layer(x, bbox_bottom, "Bullets", obj_dust)){
				vsp = 0	
			}
		}
	}
	image_speed = 1
	if (hsp == 0){
		sprite_index = spr_player
	}
	else{
		sprite_index = spr_player_r
	}
}

if (hsp != 0) image_xscale = sign(hsp)
#endregion

if (key_attack){
	state = PLAYERSTATE.ATTACK_SLASH
}
