if (_hasTarget == false)
{
	// Looks for nearest target
	_hasTarget = true;
}

// Moves to intended target
if(!instance_exists(obj_settlement) && instance_exists(obj_player_centre))
{
	move_towards_point(obj_player_centre.x, obj_player_centre.y, speed);
}