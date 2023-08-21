_cooldown -= (delta_time * 0.000001);

if (!_is_ready)
{
	if(_cooldown <= 0)
	{
		_is_ready = true;
		image_index = 1;
	}
}