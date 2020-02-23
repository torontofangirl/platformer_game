/// @desc spawn

if (triggered){
	//check ds list for enemies ready to spawn
	//if right wave/time spawn them
	for (var i = 0; i < ds_list_size(waves); i++){
		var _next = ds_list_find_value(waves, i)
		if (_next[SPAWNER.WAVE] == current_wave) && (_next[SPAWNER.DELAY] == timer){
			var _spawnpoint = _next[SPAWNER.SPAWN]
			instance_create_layer(spawn[_spawnpoint, 0], spawn[_spawnpoint, 1], "Enemy", _next[SPAWNER.TYPE])
		}
	}
	timer++
	//next wave or end spawner when all enemies ded
	if (remaining[current_wave] <= 0){
		if (current_wave == total_waves){
			with (obj_door) closed = false
			instance_destroy()
		}
		else{
			current_wave ++
			timer = 0
		}
	}
}
