draw_text(20, 20, "Difficulty " + string(difficulty));
draw_text(20, 40, "Resources " + string(resources_collected));
draw_text(20, 60, "Points " + string(points));

if(resources_collected >= build_cost)
{
	draw_set_colour(c_green);
	draw_text(20, 80, "You can settle!");
	draw_set_colour(c_white);
}
else
{
	draw_set_colour(c_red);
	draw_text(20, 80, "You cannot settle!");
	draw_set_colour(c_white);
}