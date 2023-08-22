draw_text(20, 20, "Difficulty " + string(difficulty));
draw_text(20, 60, "Resources " + string(resources_collected));
draw_text(20, 100, "Points " + string(points));
draw_text(20, 140, "High score " + string(highscore));

if(resources_collected >= build_cost)
{
	draw_set_colour(c_green);
	draw_text(20, 180, "You can settle!");
	draw_set_colour(c_white);
}
else
{
	draw_set_colour(c_red);
	draw_text(20, 180, "You cannot settle!");
	draw_set_colour(c_white);
}

if(pause)
{
	window_set_cursor(cr_default);
	
	if(!surface_exists(paused_surf))
	{
		if(paused_surf = -1)
		{
			instance_deactivate_all(true);
			instance_activate_object(obj_button_resume);
			instance_activate_object(obj_button_return);
		}
			
		paused_surf = surface_create(room_width, room_height);
		surface_set_target(paused_surf);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
	}
	else
	{
		draw_surface(paused_surf, 0, 0);
		draw_set_alpha(0.5);
		draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text_transformed_colour(540, 360, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	}
}