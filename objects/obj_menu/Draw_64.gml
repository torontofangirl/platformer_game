/// @desc Draw menu

draw_set_text(c_black, fnt_menu, fa_right, fa_bottom)

for (var i = 0; i < menu_items; i++){
	var _offset = 2
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
	draw_text_outline(xx, yy, txt, _offset)
	draw_set_colour(col)
	draw_text(xx, yy, txt)
	
}

draw_set_colour(c_black)
draw_rectangle(gui_width, gui_height - 200, gui_width + 900, gui_height, false)

// draw controls and credits
var xxx = 20
var yyy = 740
var txt1 = "ARTWORK BY SHAUN SPALDING\nMUSIC BY EQUINOXX\nhttps://www.youtube.com/watch?v=Yv5OJ9BVGCs"
draw_set_text(c_black, fnt_menu, fa_left, fa_bottom)
draw_text_outline(xxx, yyy, txt1, _offset)
draw_set_colour(c_white)
draw_text(xxx, yyy, txt1)

// draw game title
var xxxx = 150
var yyyy = 10
var offset = 12
var angle = 340
var scale = 6
var txt2 = "The Great\nOutdoors"
draw_set_text(c_black, fnt_menu, fa_left, fa_top)
draw_text_transformed(xxxx - offset, yyyy, txt2, scale, scale, angle)
draw_text_transformed(xxxx + offset, yyyy, txt2, scale, scale, angle)
draw_text_transformed(xxxx, yyyy - offset, txt2, scale, scale, angle)
draw_text_transformed(xxxx, yyyy + offset, txt2, scale, scale, angle)
draw_set_colour(c_white)
draw_text_transformed(xxxx, yyyy, txt2, scale, scale, angle)
