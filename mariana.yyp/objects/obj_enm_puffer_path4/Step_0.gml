/// @description 
// You can write your code in this editor

dist = distance_to_object(obj_diver);

if (dist < 350)
{
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
		path_start(path3,2,path_action_restart,false);
	}
}
	
