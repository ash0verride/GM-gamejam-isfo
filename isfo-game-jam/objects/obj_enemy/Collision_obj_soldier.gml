/// @description Kill the soldier
instance_create_layer(other.x, other.y, "Forground_Effects", obj_hit);

instance_destroy(other);

audio_play_sound(SFX_Explosion_Big, 0, false);

_has_target = false;