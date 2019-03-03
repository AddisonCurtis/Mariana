/// @description collison with player
// You can write your code in this editor
if (place_meeting(x,y,obj_diver)) {
	obj_game_controller.hp -= 10;
	audio_play_sound(snd_player_death,10,false);
	instance_destroy();
}