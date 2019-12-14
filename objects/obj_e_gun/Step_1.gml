x = owner.x
y = owner.y + 10

image_xscale = abs(owner.image_xscale)
image_yscale = abs(owner.image_yscale)

if (instance_exists(obj_player)){
	if (obj_player.x < x) image_yscale = -image_yscale
	if (point_distance(obj_player.x, obj_player.y, x, y) < 600){
		image_angle = point_direction(x, y, obj_player.x, obj_player.y) + random_range(0, 5)
		countdown--
		if (countdown <= 0){
			countdown = countdownrate
			if (!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, false)){
				// bullet code here
				audio_sound_pitch(snd_shoot, choose(0.8, 1.0, 1.2))
				audio_play_sound(snd_shoot, 5, false)
				with (instance_create_layer(x, y, "Bullets", obj_e_bullet)){
				spd = 15
				direction = other.image_angle + irandom_range(-5, 5)
				image_angle = direction
				}
			}	
		}
	}
}


