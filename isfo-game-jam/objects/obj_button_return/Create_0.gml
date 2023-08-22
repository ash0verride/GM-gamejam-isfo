/// @description Insert description here
// You can write your code in this editor
var _reset = function ()
{
	y = ystart;
	room_goto(rm_menu);
}

_time_source = time_source_create(time_source_game, 10, time_source_units_frames, _reset);

image_xscale = 5/3;
image_yscale = 5/3;