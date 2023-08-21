//If a better target exists, set _has_target to false
if(_has_target && instance_exists(_target))
{
	if(_target.object_index == obj_player_centre && instance_exists(obj_soldier) ||
	_target.object_index == obj_soldier && instance_exists(obj_settlement) ||
	_target.object_index == obj_player_centre && instance_exists(obj_settlement))
	{
			_has_target = false;
	}
}

//If there is currently no target find a new one
if (_has_target == false)
{
	//Go for the nearest settlement
	if(instance_exists(obj_settlement))
	{
		var _closest = 10000;
		
		//Iterate through every settlement
		for(var i = 0; i < instance_number(obj_settlement); i++)
		{
			var _settlement = instance_find(obj_settlement, i);
			
			//If it's closer than the recorded closest distance then that may be the next target
			if(distance_to_object(_settlement) < _closest)
			{
				_closest = distance_to_object(_settlement);
				_target = _settlement;
			}
		}
		
		//Say that the enemy has a target now
		_has_target = true;
	}
	//If there are no settlements go for the nearest soldier
	else if(!instance_exists(obj_settlement) && instance_exists(obj_soldier))
	{
		var _closest = 10000;
		
		//Iterate through every soldier
		for(var i = 0; i < instance_number(obj_soldier); i++)
		{
			var _soldier = instance_find(obj_soldier, i);
			
			//If it's closer than the recorded closest distance then that may be the next target
			if(distance_to_object(_soldier) < _closest)
			{
				_closest = distance_to_object(_soldier);
				_target = _soldier;
			}
		}
		
		//Say that the enemy has a target now
		_has_target = true;
	}
	//If there are no soldiers, go for the player's centre
	else if(instance_exists(obj_player_centre))
	{
		_target = obj_player_centre;
		_has_target = true;
	}
}

if(_has_target)
{
	if(instance_exists(_target))
	{
		move_towards_point(_target.x, _target.y, _speed)
	}
	else
	{
		_has_target = false;
	}
}