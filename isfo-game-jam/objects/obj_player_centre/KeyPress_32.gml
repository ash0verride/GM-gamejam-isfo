/// @description Spawn settlement
if(instance_exists(obj_game_manager))
{
	if (obj_game_manager.resources_collected >= obj_game_manager.build_cost)
	{
		obj_game_manager.resources_collected -= obj_game_manager.build_cost;
		instance_create_layer(x, y, "Spawners", obj_settlement);
		
		audio_play_sound(choose(MP3_Electric_Discharge_1, MP3_Electric_Discharge_2), 0, false);
	}
}