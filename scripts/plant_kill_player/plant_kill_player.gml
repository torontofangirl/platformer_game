/// @desc dying
with (obj_gun) instance_destroy()
instance_change(obj_p_dead, true)

direction = point_direction(other.x, other.y, x, y)
hsp = lengthdir_x(6, direction)
vsp = lengthdir_x(4, direction) - 2

if (sign(hsp) != 0) image_xscale = sign(hsp)

global.kills -= global.killsthisroom


