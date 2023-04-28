/// @description Insert description here
// You can write your code in this editor
audio_pause_all();
if(room == rm_level1) audio_play_sound(first_level, 10, true);
else if (room == rm_level2) audio_play_sound(second_level, 10, true);
else if (room == rm_level3) audio_play_sound(final_level, 10, true);