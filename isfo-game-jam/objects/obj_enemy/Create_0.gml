_max_health = obj_game_manager.difficulty * 4.0;
_drop_rate = 2;

_health = _max_health;
_speed = obj_game_manager.difficulty;
speed = _speed;

_has_target = false;
_has_smoke = false;
_has_sparks = false;
_has_fire = false;

_target = noone;

image_blend = make_color_hsv(5, 0, 255);