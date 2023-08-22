/// @description Kill the soldier

instance_destroy(other);

audio_play_sound(SFX_Explosion_Big, 0, false);

_has_target = false;