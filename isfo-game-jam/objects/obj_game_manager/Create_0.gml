difficultyTimer = 0.0;
difficulty = 1;

_maxDifficulty = 5;
_timeBetweenLevels = 20;

var _inital_spawner_count = 3;

resources_collected = 0;
build_cost = 2;

points = 0;

global.pause = false;

randomise();

for (var _i = 0; _i < _inital_spawner_count; _i++)
{
		instance_create_layer(random_range(0, room_width), random_range(0, room_height), "Spawners", obj_enemy_spawner);
}