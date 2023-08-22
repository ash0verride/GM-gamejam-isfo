/// @description Kill the soldier

instance_create_layer(other.x, other.y, "Forground_Effects", obj_hit);
instance_destroy(other)

_has_target = false;