/// @description 
// You can write your code in this editor
var dist = distance_to_object(obj_diver);

if (dist < 250)
{
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
	