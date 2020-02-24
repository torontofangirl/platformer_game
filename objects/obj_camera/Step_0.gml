/// @description update camera
if (instance_exists(follow))
{
	xTo = follow.x
	yTo = follow.y
	
	if ((follow).object_index == obj_dead){
		x = xTo
		y = yTo
	}
}

// update object pos
x += (xTo - x) / 25
y += (yTo - y) / 25

// keep camera inside room
x = clamp(x, view_w_half + buff, room_width - view_w_half - buff)
y = clamp(y, view_h_half + buff, room_height - view_h_half - buff)

// screen shake
x += irandom_range(-shake_remain, shake_remain)
y += irandom_range(-shake_remain, shake_remain)
shake_remain = max(0, shake_remain-((1 / shake_length) * shake_magnitude))

// update cam pos
camera_set_view_pos(cam, x - view_w_half, y - view_h_half)

// parallax bground
if (room != rm_menu) && (room != rm_ending){
	if (layer_exists("Parallax1")){
		layer_x("Parallax1", x / 4)	
	}

	if (layer_exists("Parallax2")){
		layer_x("Parallax2", x / 2)	
	}
}
