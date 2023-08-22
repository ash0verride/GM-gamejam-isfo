difficultyTimer += (delta_time * 0.000001);

// Controls difficulty
if (difficultyTimer >= _timeBetweenLevels && difficulty < _maxDifficulty)
{
	difficulty++;
	difficultyTimer -=  _timeBetweenLevels;
}

if (!instance_exists(obj_soldier) && !pause)
{
	if(points > highscore)
		save();
	
	
	time_source_start(_time_source_reset);
	
}

if(room == rm_player)
{
	if(keyboard_check_pressed(ord("P")))
	{
		pause = true;
		resume = false;
		
		var _x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
		var _y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 + 200;
		
		instance_create_layer(_x, _y, "GUI", obj_button_resume);
		instance_create_layer(_x, _y + 150, "GUI", obj_button_return);
	}
	
	if(pause && resume)
	{
		pause = false;
		resume = false;
		
		paused_surf = -1;
		
		window_set_cursor(cr_none);
		instance_activate_all();
	}
}