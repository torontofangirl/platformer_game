/// @desc screen_shake(magnitude, frame)
/// @arg magnitude sets the strength of the shake (distance in pixels)
/// @arg frames sets length of shake in frames (60 = 1sec)

with (obj_camera){
	if (argument[0] > shake_remain){
		shake_magnitude = argument[0]
		shake_remain = argument[0]
		shake_length = argument[1]
	}
}


