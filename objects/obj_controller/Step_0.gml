//Daylight Counter
if(time_in_day > 0){
	time_in_day--;
}

//Night Controller
if(enemy_death_count == enemy_night_total){
	time_of_day = "day";
	num_of_days++;
	time_in_day = room_speed * 10;
	alarm[0] = room_speed * 10;
	enemy_night_total += 2;
	enemy_death_count = 0;
	enemy_spawn_count = instance_number(obj_enemySpawner) + 1;
}

//Reset room to upper level when night begins
if(time_of_day = "night" && room = rm_lowerLevel){
	room_goto(rm_upperLevel);
}

//Dev. Cheats
if(keyboard_check_pressed(ord("P"))){
	alarm[0] = 1;
}