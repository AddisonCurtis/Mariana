/// @description Basic sting that chases the player
// You can write your code in this editor
speed = 5;
direction = point_direction(x,y,obj_diver.x,obj_diver.y);
image_angle = point_direction(x,y,obj_diver.x,obj_diver.y);
audio_play_sound(snd_enemy_shot,10,false);
image_xscale = 2;
image_yscale = 2;
