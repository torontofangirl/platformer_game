/// @desc Start waves
if (!triggered){
	//close doors and stop retriggering
	with (obj_door) closed = true
	triggered = true
	
	//find number of waves and enemies per wave
	total_waves = -1 //start at -1 cuz when first wave STARTS total waves = 0
	for (var i = 0; i < ds_list_size(waves); i++){
		var _thisentry = ds_list_find_value(waves, i)
		if (_thisentry[SPAWNER.WAVE] > total_waves){
			total_waves ++
			remaining[total_waves] = 0
		}
		remaining[total_waves]++
	}
}