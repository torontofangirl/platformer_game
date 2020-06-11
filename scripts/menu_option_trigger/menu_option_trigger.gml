var _shake_magnitude = 4
var _shake_length = 30

menu_x_target = gui_width + 200
menu_committed =  menu_cursor
screen_shake(_shake_magnitude, _shake_length)
menu_control = false
audio_play_sound(snd_death, 10, false)