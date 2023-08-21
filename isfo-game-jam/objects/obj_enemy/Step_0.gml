if (_has_target == false)
{
	// Looks for nearest target
	_has_target = true;
}

// Moves to intended target
if(instance_exists(_target))
{
	move_towards_point(_target.x, _target.y, speed);
}