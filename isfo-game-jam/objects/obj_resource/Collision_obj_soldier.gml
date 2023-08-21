if(instance_exists(obj_game_manager))
{
	obj_game_manager.resources_collected++;
	instance_destroy();
}