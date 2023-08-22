difficultyTimer = 0.0;
difficulty = 1;

_maxDifficulty = 5;
max_enemy_cooldown = 20;
inital_enemy_cooldown = 5;
_timeBetweenLevels = 60;

var _inital_spawner_count = 4;

resources_collected = 0;
resource_lifespan = 10;
build_cost = 2;

points = 0;
highscore = 0;

draw_text_alpha = 1;

is_mouse_charged = true;

if(file_exists("highscore.ini"))
{
	ini_open("highscore.ini");
	highscore = ini_read_real("highscore", "score", highscore);
	ini_close();
}

pause = false;
paused_surf = -1;

audio_stop_all();
audio_play_sound(sndTrack2, 0, true, 0.3);

randomise();

for (var _i = 0; _i < _inital_spawner_count; _i++)
{
		instance_create_layer(random_range(0, room_width), random_range(0, room_height), "Spawner_Enemies", obj_enemy_spawner);
}

for (var _j = 0; _j < 2000; _j++)
{
		instance_create_layer(random_range(0, room_width), random_range(0, room_height), "Stars", obj_stars);
}

var _time_source_reset_funtion = function()
{
	instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]),"Forground_Effects", obj_gameover);
}

_time_source_reset = time_source_create(time_source_game, 90, time_source_units_frames, _time_source_reset_funtion);