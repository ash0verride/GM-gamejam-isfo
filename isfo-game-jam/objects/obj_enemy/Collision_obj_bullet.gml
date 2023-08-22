_health -= 1.0;
instance_create_layer(other.x, other.y, "Midground_Effects", obj_hit);

instance_destroy(other)

if (_health > 0.0)
{
	var _health_lost = _max_health - _health;
	image_blend = make_color_hsv(5, (255 * (_health_lost / _max_health)), 255)
	speed = _speed * (_health / _max_health);
	
	if (_has_fire = false && _health <= _max_health * 0.25)
	{
		var _fire_trail = instance_create_layer(x, y, "Background_Effects_Up", obj_fire);
		_fire_trail.owner_target = self;
		_has_fire = true;
	}
	else if (_has_sparks = false && _health <= _max_health * 0.5)
	{
		var _spark_trail = instance_create_layer(x, y, "Midground_Effects", obj_spark);
		_spark_trail.owner_target = self;
		_has_sparks = true;
	}
	else if (_has_smoke = false && _health <= _max_health * 0.75)
	{
		var _smoke_trail = instance_create_layer(x, y, "Background_Effects", obj_smoke);
		_smoke_trail.owner_target = self;
		_has_smoke = true;
	}
}
else 
{
	if(floor(random_range(0, _drop_rate)) == 1)
	{
		instance_create_layer(x, y, "Forground_Effects", obj_resource);
	}
	
	if(instance_exists(obj_game_manager))
	{
		obj_game_manager.points += 100;
	}
	
	instance_destroy();
}