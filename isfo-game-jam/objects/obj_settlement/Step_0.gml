if (!_is_ready)
{
	_cooldown -= (delta_time * 0.000001);
	
	if(_cooldown <= 0)
	{
		_is_ready = true;
		image_index = 1;
	}
}