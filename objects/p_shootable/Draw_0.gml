global.flash = 0
draw_self()

if (global.flash > 0){
	global.flash -- 
	shader_set(sh_white)
	draw_self()
	shader_reset()
}
