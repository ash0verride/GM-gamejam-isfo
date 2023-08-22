randomise();

audio_stop_all();
audio_play_sound(sndTrack1, 0, true, 0.3);

layer_background_index(layer_background_get_id("Background"), random_range(0, 9));