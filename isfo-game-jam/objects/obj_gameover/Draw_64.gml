if (_draw_alpha < 1)
{
	_draw_alpha += (delta_time * 0.000001);
}

draw_set_alpha(_draw_alpha);

draw_set_halign(fa_center);

draw_set_colour(c_red);
draw_text(540,200, "GAME OVER");
draw_set_colour(c_white);

draw_text(540, 300, "Points " + string(obj_game_manager.points));
draw_text(540, 340, "High score " + string(obj_game_manager.highscore));

draw_text(540, 400, "Press any key to restart");

draw_set_halign(fa_left);

draw_set_alpha(1);