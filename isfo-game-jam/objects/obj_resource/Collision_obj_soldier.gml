if(instance_exists(obj_game_manager))
{
	obj_game_manager.resources_collected++;
	
	audio_play_sound(SFX_Pickup_Powerup, 0, false);
	
	instance_destroy();
}