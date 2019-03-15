


//Daylight Counter
if(time_in_day > 0){
	time_in_day--;
}

//Night Controller
if(time_of_day = "night"){
	if(audio_exists(Bgm_DayHappy)){
		audio_stop_sound(Bgm_DayHappy);
	}
	if(!audio_is_playing(Bgm_NightHorror)){	
		audio_play_sound(Bgm_NightHorror, 0, 1);
	}
} else if (time_of_day = "day"){
	if(audio_exists(Bgm_NightHorror)){
		audio_stop_sound(Bgm_NightHorror);
	}
	if(!audio_is_playing(Bgm_DayHappy)){
		audio_play_sound(Bgm_DayHappy, 0, 1);
	}
}
if(enemy_death_count == enemy_night_total){
	player_health = 100;
	time_of_day = "day";
	num_of_days++;
	time_in_day = room_speed * 180;
	alarm[0] = room_speed * 180;
	enemy_night_total += 2;
	enemy_death_count = 0;
	enemy_spawn_count = instance_number(obj_enemySpawner) + 1;
}

//Reset room to upper level when night begins
if(time_of_day = "night" && room = rm_lowerLevel){
	room_goto(rm_upperLevel);
}

//Pausing
if(keyboard_check_pressed(vk_space)){
	if(end_game){
		name = get_string("Enter your name:", "");
		highscore_add(name, score);
		room_goto(room_Scores);
	}
	else if (!end_game && !pause_game){
		pause_game = true;
	}
	else if (pause_game){
		pause_game = false;
	}
}
if(pause_game && keyboard_check_pressed(vk_backspace)){
	game_restart();
}
if(pause_game && keyboard_check_pressed(vk_escape)){
	game_end();
}

//Dev. Cheats
if(keyboard_check_pressed(ord("P"))){
	alarm[0] = 1;
}
if(keyboard_check_pressed(vk_tab)){
	instance_destroy(obj_enemySlime);
}
if(keyboard_check(vk_shift) && keyboard_check(vk_tab)){
	//win
	instance_destroy(all);
	room_goto(rm_game_win);
}
if(keyboard_check_pressed(vk_f2)){
	num_of_days = 7;
}
//Add diamonds
