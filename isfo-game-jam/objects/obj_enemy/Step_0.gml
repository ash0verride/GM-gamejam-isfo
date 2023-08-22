//If a better target exists, set _has_target to false
if(_has_target && instance_exists(_target))
{
	if(_target.object_index == obj_player_centre && instance_exists(obj_soldier) ||
	_target.object_index == obj_player_centre && instance_exists(obj_settlement) ||
	_target.object_index == obj_soldier)
	{
			_has_target = false;
	}
}

//If there is currently no target find a new one
if (_has_target == false)
{
	//Find the closest soldier
	if(instance_exists(obj_soldier))
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
		
		//If there is a soldier within range say that the enemy has a target now
		if(_closest < 500)
			_has_target = true;
	}
	
	//Check whether the enemy has a target now
	if(!_has_target)
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
		//If there are no soldiers, go for the player's centre
		else if(instance_exists(obj_player_centre))
		{
			_target = obj_player_centre;
			_has_target = true;
		}
	}
}

//If the enemy thinks they have a target
if(_has_target)
{
	//If that target actually exists, move towards it
	//Otherwise find a new target
	if(instance_exists(_target))
	{
		move_towards_point(_target.x, _target.y, _speed)
	}
	else
	{
		_has_target = false;
	}
}