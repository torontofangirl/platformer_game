//[wave, type, spawnpoint, delay]
waves = ds_list_create()
ds_list_add(waves, [0, obj_enemy, 0, 0])
ds_list_add(waves, [0, obj_enemy, 0, 50])
ds_list_add(waves, [0, obj_enemy, 0, 100])
ds_list_add(waves, [0, obj_enemy, 1, 0])
ds_list_add(waves, [0, obj_enemy, 1, 50])
ds_list_add(waves, [0, obj_enemy, 1, 100])

ds_list_add(waves, [1, obj_enemy, 0, 10])
ds_list_add(waves, [1, obj_enemy, 0, 20])
ds_list_add(waves, [1, obj_enemy, 0, 30])
ds_list_add(waves, [1, obj_enemy, 0, 40])
ds_list_add(waves, [1, obj_enemy, 0, 50])
ds_list_add(waves, [1, obj_enemy, 0, 60])

ds_list_add(waves, [2, obj_enemy, 1, 10])
ds_list_add(waves, [2, obj_enemy, 1, 20])
ds_list_add(waves, [2, obj_enemy, 1, 30])
ds_list_add(waves, [2, obj_enemy, 1, 40])
ds_list_add(waves, [2, obj_enemy, 1, 50])
ds_list_add(waves, [2, obj_enemy, 1, 60])

ds_list_add(waves, [3, obj_enemy_big, 1, 0])

spawn[0, 0] = 800 //xcor 1
spawn[0, 1] = 230 //ycor 1
spawn[1, 0] = 1430 //etc
spawn[1, 1] = 230