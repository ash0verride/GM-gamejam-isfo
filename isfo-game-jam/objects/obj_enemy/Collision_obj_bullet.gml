/// @description Die and give resource

if(instance_exists(obj_player_centre) && floor(random_range(0, 2)) == 1)
{
	obj_player_centre.can_settle = true;
}

instance_destroy();