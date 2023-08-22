_cooldown -= (delta_time * 0.000001);

if (_cooldown <= 0)
{
	// Creates an instance of enemy below spawner
	instance_create_layer(x, y + 5, layer, obj_enemy);
	
	_cooldown = random_range(_max_cooldown * 0.5, _max_cooldown * 1.5);
}