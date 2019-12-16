x += lengthdir_x(spd, direction)
y += lengthdir_y(spd, direction)

// check for collision with pshootable first so you don't hit the wall first
if (place_meeting(x, y, p_shootable)){
	with (instance_place(x, y, p_shootable)){
		hp --
		global.flash = 3
		hitfrom = other.direction
	}
instance_destroy()
}

if (place_meeting(x, y, obj_wall)){
	while (place_meeting(x, y, obj_wall)){
		x -= lengthdir_x(1, direction)
		y -= lengthdir_y(1, direction)	
	}
	spd = 0
	instance_change(obj_hitspark, true)
	layer_add_instance("Tiles", id)
	depth += 1
}



