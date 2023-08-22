//Move towards player centre
if(instance_exists(obj_player_centre) && move)
{
	x += 0.03 * (obj_player_centre.x - x);
	y += 0.03 * (obj_player_centre.y - y);
}

//Point towards mouse
direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = direction - 90;

//Shoot if able
shoot_countdown -= delta_time / 1000000;

if mouse_check_button(mb_left)
{
	if (obj_game_manager.is_mouse_charged = false)
	{
		audio_play_sound(MP3_Smoke_Puff_2, 0, false);
		obj_game_manager.is_mouse_charged = true;
	}
}
else
{
	obj_game_manager.is_mouse_charged = false;
}

if(shoot_countdown <= 0)
{
	if mouse_check_button(mb_left)
	{
		//Spawn the bullet
		var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	
		audio_play_sound(choose(SFX_PlayerShip_RocketFire2, SFX_PlayerShip_RocketFire2, SFX_PlayerShip_RocketFire1), 0, false)
	
		_bullet.speed = 10;

		_bullet.direction = direction;
		_bullet.image_angle = direction - 90;
	}
	
	//Reset the countdown
	shoot_countdown += 1;
}