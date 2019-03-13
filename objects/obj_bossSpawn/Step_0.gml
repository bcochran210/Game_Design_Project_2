if(obj_controller.time_of_day = "night"){
	if((!boss_spawned) && (!instance_exists(obj_bossSlime)) && (obj_controller.num_of_days / 7 == floor(obj_controller.num_of_days / 7))){
		instance_create_depth(x, y, 0, obj_bossSlime);
		boss_spawned = true;
	} else if (!(obj_controller.num_of_days / 7 == floor(obj_controller.num_of_days / 7))){
		boss_spawned = false;
	}
}