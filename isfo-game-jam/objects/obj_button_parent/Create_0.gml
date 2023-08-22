var _reset = function ()
{
	y = ystart;
}

_time_source = time_source_create(time_source_game, 10, time_source_units_frames, _reset);