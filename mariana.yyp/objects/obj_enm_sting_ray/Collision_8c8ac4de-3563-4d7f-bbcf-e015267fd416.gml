stg_hp = stg_hp -1;
audio_play_sound(snd_clank,10,false);
instance_destroy(other);
if (stg_hp <=0) {
	instance_destroy(self);	
}