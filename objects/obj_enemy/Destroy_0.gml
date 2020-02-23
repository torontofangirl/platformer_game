/// @desc tick down spawner if exists
if (instance_exists(obj_spawner)){
	with (obj_spawner){
		if (triggered){
			remaining[current_wave]--	
		}
	}
}
