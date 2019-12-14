if (hasweapon){
	mygun = instance_create_layer(x, y, "Gun", obj_e_gun)
	with (mygun){
		owner = other.id
	}
}
else mygun = noone



