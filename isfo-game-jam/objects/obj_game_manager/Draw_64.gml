draw_text(20, 20, "Difficulty " + string(difficulty));

if(instance_exists(obj_player_centre))
{
	var _settle = (obj_player_centre.can_settle ? "" : "not") + " settle."
	draw_text(20, 40, "You can" + _settle);
}