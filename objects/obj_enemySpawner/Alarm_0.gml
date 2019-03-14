randomize();
spawn_rare_slime = irandom_range(1, 10);
var s = spawn_rare_slime;
if(obj_controller.time_of_day = "night"){
	if (s = 10) {
		instance_create_depth(x, y, 0, obj_enemySlimeSR);
	} else if (s = 9 || s = 8) {
		instance_create_depth(x, y, 0, obj_enemySlimeR);
	} else if ( s = 7 || s = 6 || s = 5 ) {
		instance_create_depth(x, y, 0, obj_enemySlimeUC);
	} else {
		instance_create_depth(x, y, 0, obj_enemySlime);
	}

	if(obj_controller.enemy_spawn_count <= obj_controller.enemy_night_total){
		alarm[0] = 100;
		obj_controller.enemy_spawn_count++;
	}
} else {
	alarm[0] = 10;
}