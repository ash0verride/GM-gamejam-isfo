difficultyTimer += (delta_time * 0.000001);

// Controls difficulty
if (difficultyTimer >= _timeBetweenLevels && difficulty < _maxDifficulty)
{
	difficulty++;
	difficultyTimer -=  _timeBetweenLevels;
}

if (!instance_exists(obj_soldier))
{
	if(points > highscore)
		save();
	
	
	time_source_start(_time_source_reset);
	
}

if(global.pause)
{
	if(points > highscore)
		save();
	
	game_restart();
}
else
{
	window_set_cursor(cr_none);	
}