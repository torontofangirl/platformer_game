/// @desc move to next room

with (obj_player){
	if (hascontrol){
		hascontrol = false
		// remember to set creation code!
		slide_transition(TRANS_MODE.GOTO, other.target)
	}	
}
