_health -= 1.0;

instance_destroy(other)

if (_health > 0.5)
{
	if (_health <= _max_health * 0.25)
	{
		image_index = 3;
	}
	else if (_health <= _max_health * 0.5)
	{
		image_index = 2;
	}
	else if (_health <= _max_health * 0.75)
	{
		image_index = 1;
	}
}
else 
{
	if(floor(random_range(0, _drop_rate)) == 1)
	{
		instance_create_layer(x, y, layer, obj_resource);
	}
	
	if(instance_exists(obj_game_manager))
	{
		obj_game_manager.points += 100;
	}
	
	instance_destroy();
}