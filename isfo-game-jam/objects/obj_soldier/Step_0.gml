//Move towards player centre
if(instance_exists(obj_player_centre) && move)
{
	x += 0.03 * (obj_player_centre.x - x);
	y += 0.03 * (obj_player_centre.y - y);
}

//Point towards mouse
direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = direction;

//Shoot if able
shoot_countdown -= delta_time / 1000000;

if(shoot_countdown <= 0)
{
	//Spawn the bullet
	var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	
	_bullet.speed = 10;
	_bullet.direction = image_angle;
	_bullet.image_angle = image_angle;
	
	//Reset the countdown
	shoot_countdown += 1;
}