/// @desc Draw menu

draw_set_font(fnt_menu)
draw_set_halign(fa_right)
draw_set_valign(fa_bottom)

for (var i = 0; i < menu_items; i++){
	var offset = 2
	var txt = menu[i]
	if (menu_cursor == i){
		txt = string_insert("> ", txt, 0)
		var col = c_white
	}
	else{
		var col = c_gray	
	}
	var xx = menu_x
	var yy = menu_y - (menu_itemheight * (i * 1.5))
	draw_set_colour(c_black)
	draw_text(xx - offset, yy, txt)
	draw_text(xx + offset, yy, txt)
	draw_text(xx, yy + offset, txt)
	draw_text(xx, yy - offset, txt)
	draw_set_colour(col)
	draw_text(xx, yy, txt)
	
}

draw_set_colour(c_black)
draw_rectangle(gui_width, gui_height - 200, gui_width + 900, gui_height, false)

// draw controls and credits
var offset = 2
var xxx = 10
var yyy = 740
draw_set_text(c_black, fnt_menu, fa_left, fa_bottom)
draw_text(xxx - offset, yyy, "WASD TO MOVE\nF TO INTERACT\nMUSIC BY EQUINOXX\nhttps://www.youtube.com/watch?v=Yv5OJ9BVGCs")
draw_text(xxx + offset, yyy, "WASD TO MOVE\nF TO INTERACT\nMUSIC BY EQUINOXX\nhttps://www.youtube.com/watch?v=Yv5OJ9BVGCs")
draw_text(xxx, yyy - offset, "WASD TO MOVE\nF TO INTERACT\nMUSIC BY EQUINOXX\nhttps://www.youtube.com/watch?v=Yv5OJ9BVGCs")
draw_text(xxx, yyy + offset, "WASD TO MOVE\nF TO INTERACT\nMUSIC BY EQUINOXX\nhttps://www.youtube.com/watch?v=Yv5OJ9BVGCs")
draw_set_colour(c_white)
draw_text(xxx, yyy, "WASD TO MOVE\nF TO INTERACT\nMUSIC BY EQUINOXX\nhttps://www.youtube.com/watch?v=Yv5OJ9BVGCs")



