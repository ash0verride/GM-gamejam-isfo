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
	
	game_restart();
}

if(global.pause)
{
	if(points > highscore)
		save();
	
	game_restart();
}