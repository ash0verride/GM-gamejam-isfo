difficultyTimer += (delta_time * 0.000001);

// Controls difficulty
if (difficultyTimer >= _timeBetweenLevels && difficulty < _maxDifficulty)
{
	difficulty++;
	difficultyTimer -=  _timeBetweenLevels;
}

if (!instance_exists(obj_soldier) && !global.pause)
{
	if(points > highscore)
		save();
	
	
	time_source_start(_time_source_reset);
	
}

if(room == rm_player)
{
	if(keyboard_check_pressed(ord("P")))
	{
		global.pause = !global.pause;
		if(!global.pause)
		{
			instance_activate_all();
			surface_free(paused_surf);
			paused_surf = -1;
		}
	}
	else
	{
		window_set_cursor(cr_none);	
	}
}