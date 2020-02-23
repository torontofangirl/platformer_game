///@desc approach(a, b, amount)
///@param point a
///@param point b
///@param amount

//moves a towards b and returns amount
if (argument0 < argument1){
	argument0 += argument2
	
	if (argument0 > argument1){
		return argument1
	}
}
else{
	argument0 -= argument2
	if (argument0 < argument1){
		return argument1	
	}
}
return argument0
