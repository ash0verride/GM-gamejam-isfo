/// @description Spawn settlement
if(can_settle)
{
	can_settle = false;
	instance_create_layer(x, y, "Instances", obj_settlement);
}