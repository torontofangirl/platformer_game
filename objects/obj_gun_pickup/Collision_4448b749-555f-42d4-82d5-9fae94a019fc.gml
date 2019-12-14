/// @description equip gun

global.hasgun = true
instance_create_layer(obj_player.x, obj_player.y, "Gun", obj_gun)
audio_sound_pitch(snd_gun_pickup, choose(0.8, 1.0, 1.2))
audio_play_sound(snd_gun_pickup, 9, false)
instance_destroy()

