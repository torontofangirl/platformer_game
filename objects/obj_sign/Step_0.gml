/// @description interact with sign
if (instance_exists(obj_player)) && (point_in_circle(obj_player.x, obj_player.y, x, y, 64)) && (!instance_exists(obj_text)){
	nearby = true
	if (keyboard_check_pressed(ord("F"))){
		with (instance_create_layer(x, y - 64, layer, obj_text)){
			text = other.text
			length = string_length(text)	
		}
		with (obj_camera){
			follow = other.id	
		}
	}
}
else nearby = false

if (!nearby){
	with (obj_camera){
		follow = obj_player	
	}
}