/// @description 
// You can write your code in this editor

dist = distance_to_object(obj_diver);

if (distance_to_object(obj_diver) < 350
	and not collision_line_first(x, y, obj_diver.x, obj_diver.y, obj_block, false, false)
	and not collision_line_first(x, y, obj_diver.x, obj_diver.y, obj_weak_block, false, false)) {
	path_end();
	if(object_exists(obj_diver))
	{
		player_x = obj_diver.x;
		player_y = obj_diver.y;
		speed = 2;
		direction = point_direction(x,y,player_x,player_y);
		image_angle = direction;
	}
	if (puf_can_shoot == 1)
	{
		instance_create_layer(x, y, "Instances_1",obj_puffer_bull);
		puf_can_shoot = 0;
		if (puf_hp == 1)
			alarm_set(0,60);
		else
		    alarm_set(0,120);
	}
}
else if(path_index != path3)
{
	speed = 2;
	direction = point_direction(x,y,start_x,start_y)
	image_angle = direction;
	if (abs(x - start_x) < 2 && abs(y-start_y)<2)
	{
		path_start(path1,2,path_action_restart,false);
	}
}

// Collison detection
// For now, just add new collidable objects to this array-
// (This must be done for every object that can collide, every time some new collidable is added)
var collidables = [obj_block, obj_weak_block];

for (var i=0; i<array_length_1d(collidables); i++) {
	if (place_meeting(x+hspeed, y, collidables[i])) {
		hspeed = 0;
		break;
	}
}

for (var i=0; i<array_length_1d(collidables); i++) {
	if (place_meeting(x, y+vspeed, collidables[i])) {
		vspeed = 0;
		break;
	}
}
