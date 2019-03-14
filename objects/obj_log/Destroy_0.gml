audio_play_sound(Sfx_TreeCut, 0, 0);
for(i = 0; i < 3; i++){	
	instance_create_depth(x, y, 0, obj_logPickUp);
}