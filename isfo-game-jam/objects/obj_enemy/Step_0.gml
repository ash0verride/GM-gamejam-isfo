if (_hasTarget == false)
{
	// Looks for nearest target
	_hasTarget = true;
}

// Moves to intended target
move_towards_point(mouse_x, mouse_y, speed);
