/// @description Insert description here
// You can write your code in this editor
var _reset = function ()
{
	y = ystart;
	obj_game_manager.resume = true;
	instance_destroy(obj_button_return);
	instance_destroy();
}

_time_source = time_source_create(time_source_game, 10, time_source_units_frames, _reset);

image_xscale = 5/3;
image_yscale = 5/3;