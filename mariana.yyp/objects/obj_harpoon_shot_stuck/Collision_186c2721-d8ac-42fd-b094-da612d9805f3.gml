if (place_meeting(x,y,obj_weak_block_h))
{
	instance_destroy(other);
	audio_play_sound(snd_wall_brk,10,false);
	instance_destroy(self);
}