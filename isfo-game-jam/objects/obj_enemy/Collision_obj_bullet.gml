health -= 1.0;

instance_destroy(other)

if (health > 0)
{
	if (health <= _max_health * 0.25)
	{
		image_index = 3;
	}
	else if (health <= _max_health * 0.5)
	{
		image_index = 2;
	}
	else if (health <= _max_health * 0.75)
	{
		image_index = 1;
	}
}
else 
{
	if(instance_exists(obj_player_centre) && floor(random_range(0, 2)) == 1)
	{
		obj_player_centre.can_settle = true;
	}
	
	instance_destroy();
}