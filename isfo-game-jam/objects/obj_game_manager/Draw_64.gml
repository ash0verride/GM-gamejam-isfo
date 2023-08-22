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