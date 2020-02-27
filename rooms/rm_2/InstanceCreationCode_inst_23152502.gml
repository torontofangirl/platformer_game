//[wave, type, spawnpoint, delay]
waves = ds_list_create()
ds_list_add(waves, [0, obj_enemy, 0, 0])
ds_list_add(waves, [0, obj_enemy, 0, 50])
ds_list_add(waves, [0, obj_enemy_big, 0, 100])
ds_list_add(waves, [0, obj_enemy, 1, 0])
ds_list_add(waves, [0, obj_enemy, 1, 50])
ds_list_add(waves, [0, obj_enemy_big, 1, 100])

ds_list_add(waves, [1, obj_enemy_tiny, 0, 10])
ds_list_add(waves, [1, obj_enemy_tiny, 0, 20])
ds_list_add(waves, [1, obj_enemy_tiny, 0, 30])
ds_list_add(waves, [1, obj_enemy_tiny, 0, 40])
ds_list_add(waves, [1, obj_enemy_tiny, 0, 50])
ds_list_add(waves, [1, obj_enemy_tiny, 0, 60])

ds_list_add(waves, [2, obj_enemy_hasweapon, 1, 10])
ds_list_add(waves, [2, obj_enemy, 1, 20])
ds_list_add(waves, [2, obj_enemy, 1, 30])
ds_list_add(waves, [2, obj_enemy, 1, 40])
ds_list_add(waves, [2, obj_enemy, 1, 50])
ds_list_add(waves, [2, obj_enemy_hasweapon, 1, 60])

spawn[0, 0] = 2500 //xcor 1
spawn[0, 1] = 450 //ycor 1
spawn[1, 0] = 2300 //etc
spawn[1, 1] = 450