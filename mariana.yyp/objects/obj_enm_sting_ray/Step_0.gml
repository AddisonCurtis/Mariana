/// @description 
// You can write your code in this editor

if (distance_to_object(obj_diver) < 250
	and not collision_line_first(x, y, obj_diver.x, obj_diver.y, obj_block, false, false)
	and not collision_line_first(x, y, obj_diver.x, obj_diver.y, obj_weak_block, false, false)) {
	if (stg_can_shoot == 1)
	{
		instance_create_layer(x, y, "Instances_1",obj_enmy_stng_sht);
		stg_can_shoot = 0;
		if (stg_hp == 1)
			alarm_set(0,60);
		else
		    alarm_set(0,120);
	}
}
	