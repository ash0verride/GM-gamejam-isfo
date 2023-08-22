if (_resourse_lifespan > 0)
{
	_resourse_lifespan -= (delta_time * 0.000001);
	
	if (_resourse_lifespan <= 5)
	{
		image_alpha = (_resourse_lifespan / 5);
	}
}
else
{
	instance_destroy();	
}