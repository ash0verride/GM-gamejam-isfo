/// @description Say whether the player can create a settlement

if(instance_exists(obj_player_centre))
{
	var _settle = (obj_player_centre.can_settle ? "" : "not") + " settle."
	draw_text(20, 20, "You can" + _settle);
}