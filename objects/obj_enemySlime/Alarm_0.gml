if(obj_controller.pause_game){
	x_spd = 0;
	y_spd = 0;
	alarm[1] = 30;
} else {
	x_spd = walkSpd * dir;
	y_spd = -10;
	audio_play_sound(Sfx_SlimeBounce, 0, 0);
	alarm[1] = 30;
}