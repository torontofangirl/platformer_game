/// @description draw score

if (room != rm_menu) && (instance_exists(obj_player)) && (global.kills > 0){
	killtextscale = max(killtextscale * 0.95, 1) // smaller and smaller until it reaches 1
	draw_set_text(c_black, fnt_menu, fa_right, fa_top)
	draw_text_transformed(RES_W - 8, 12, string(global.kills) + " Ecocides Commited :(", killtextscale, killtextscale, 0)
	draw_set_colour(c_white)
	draw_text_transformed(RES_W - 10, 10, string(global.kills) + " Ecocides Commited :(", killtextscale, killtextscale, 0)
}


