	with(instance_create_layer(x, y, layer, obj_dead)){
		direction = other.hitfrom 
		hsp = lengthdir_x(3, direction)
		vsp = lengthdir_y(3, direction) - 2
		image_xscale = sign(hsp)
		if (sign(hsp) != 0) image_xscale = sign(hsp) * other.size
		image_yscale = other.size
	}
	
	with (mygun) instance_destroy()
	if (instance_exists(obj_player)){
		global.kills++
		global.killsthisroom++
		with (obj_game) killtextscale = 2
		
	}
	instance_destroy()
	