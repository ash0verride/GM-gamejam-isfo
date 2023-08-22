if (instance_exists(owner_target))
{
	x = owner_target.x;
	y = owner_target.y;
	direction = owner_target.direction;
	image_angle = direction + 90;
}
else
{
	instance_destroy();
}