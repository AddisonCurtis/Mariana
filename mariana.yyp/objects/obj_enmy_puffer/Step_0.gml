/// @description 
// You can write your code in this editor

if (distance_to_object(obj_diver) < 350 
	and not collision_line_first(x, y, obj_diver.x, obj_diver.y, obj_block, false, false)
	and not collision_line_first(x, y, obj_diver.x, obj_diver.y, obj_weak_block, false, false)) {
	if (puf_can_shoot == 1) {
		sprite_index = spr_enmy_puffer_puffed;
		instance_create_layer(x, y, "Instances_1", obj_puffer_bull);
		puf_can_shoot = 0;
		if (puf_hp == 1) {
			alarm_set(0,60);
		}
		else
		{
		    alarm_set(0,120);
		}
		sprite_index = spr_enmy_puffer;
	}
}
