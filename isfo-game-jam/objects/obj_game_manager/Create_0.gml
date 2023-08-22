difficultyTimer = 0.0;
difficulty = 1;

_maxDifficulty = 5;
max_enemy_cooldown = 20;
inital_enemy_cooldown = 5;
_timeBetweenLevels = 60;

var _inital_spawner_count = 2;

resources_collected = 0;
resource_lifespan = 10;
build_cost = 2;

points = 0;
highscore = 0;

if(file_exists("highscore.ini"))
{
	ini_open("highscore.ini");
	highscore = ini_read_real("highscore", "score", highscore);
	ini_close();
}

global.pause = false;

randomise();

for (var _i = 0; _i < _inital_spawner_count; _i++)
{
		instance_create_layer(random_range(0, room_width), random_range(0, room_height), "Spawner_Enemies", obj_enemy_spawner);
}

var _time_source_reset_funtion = function()
{
	game_restart();
}

_time_source_reset = time_source_create(time_source_game, 90, time_source_units_frames, _time_source_reset_funtion);