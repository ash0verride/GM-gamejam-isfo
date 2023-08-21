if (_has_target == false)
{
	// Looks for nearest target
	_has_target = true;
}

// Moves to intended target
if(instance_exists(_target))
{
	move_towards_point(_target.x, _target.y, speed);
	// Moves to intended target
	if(!instance_exists(obj_settlement) && instance_exists(obj_player_centre))
	{
		move_towards_point(obj_player_centre.x, obj_player_centre.y, speed);
		_has_target = true;
	}
	else if(instance_exists(obj_settlement))
	{
		var _closest = 10000;
		
		for(var i = 0; i < instance_number(obj_settlement); i++)
		{
			var _settlement = instance_find(obj_settlement, i);
			if(distance_to_object(_settlement) < _closest)
			{
				_closest = distance_to_object(_settlement);
				_target = _settlement;
			}
		}
		_has_target = true;
	}
}

if(_has_target)
{
	if(instance_exists(_target))
	{
		move_towards_point(_target.x, _target.y, speed)
	}
	else
	{
		_has_target = false;
	}
}