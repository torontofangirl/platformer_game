//ik that im supposed to load from a file, im to lazy see i didnt spell
gunsprite = layer_sprite_get_id("title_assets", spr_gun)
if (global.hasgun) && (global.kills > 0){
	endtext[0] = "And on this day, our hero, a supporter of Trump had commited " + string(global.kills) + " acts of ecocide.\nENTER TO CONTINUE"	
	if (global.kills == 1) endtext[0] = "And on this day, our hero, a supporter of Trump, had commited " + string(global.kills) + " act of ecocide.\nENTER TO CONTINUE"
	endtext[1] = "Ecocide is the destruction of the natural environment, especially when willfully done."	
	endtext[2] = "Ecocide is also punishable by a crime against humanity."	
	endtext[3] = "Needless to say, our hero was punished accordingly, with a term not to exceed 30 years."	
	endtext[4] = "His defense team, sponsored by Trump, \ntried to argue that the wildlife had also tried to kill him, but to no avail."	
	endtext[5] = "The end."	
}
else if (not global.hasgun){
	layer_sprite_destroy(gunsprite)	
	endtext[0] = "Our hero did not enjoy his serene walk through nature.\nInstead, he described it as boring and a waste of time.\nENTER TO CONTINUE"
	endtext[1] = "However, he left a good review on TripAdvisor because he was a good person."
	endtext[2] = "A discarded firearm was reported to the local authorities\nbut there was no evidence that it belonged to our hero."
	endtext[3] = "The end."
}
else if (global.hasgun) && (global.kills == 0){
	endtext[0] = "Our hero was found with a concealed firearm in his pocket supposedly to defend himself.\nENTER TO CONTINUE"
	endtext[1] = "Our hero said that the wildlife was attacking him, but this was quickly dismssed by the judge."
	endtext[2] = "Regardless, no murders were commited so our hero was let free."
	endtext[3] = "Our hero thought that this was a massive overreaction and that wildlife should be punished,\nso he left a bad review on Yelp and TripAdvisor"
	endtext[4] = "The end."
}

spd = 0.5
letters = 0
currentline = 0
length = string_length(endtext[currentline])
text = ""


