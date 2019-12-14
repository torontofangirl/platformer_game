if (hp <= 0){
	instance_destroy()
	audio_sound_pitch(snd_crate_break, choose(0.8, 1, 1.2))
	audio_play_sound(snd_crate_break, 9, false)
}

