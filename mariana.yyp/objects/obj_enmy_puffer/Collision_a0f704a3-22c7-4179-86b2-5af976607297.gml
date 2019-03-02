/// @description Insert description here
// You can write your code in this editor
puf_hp = puf_hp -1;
audio_play_sound(snd_clank,10,false);
instance_destroy(other);
if (puf_hp <=0)
{
	instance_destroy(self);
	
}