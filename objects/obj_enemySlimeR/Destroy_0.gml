//Drops
if(obj_controller.time_of_day = "night"){
	obj_controller.enemy_death_count++;
}
dropRate = irandom_range(1, 3);
dropAmount = irandom_range(1, 10);
if(dropRate = 1){
	//Drops Iron Pickaxe
	instance_create_depth(x, y, 0, obj_steelPickaxeDrop);
}
if(dropRate = 2){
	//Drops Iron Sword
	instance_create_depth(x, y, 0, obj_steelSwordPickUp);
}
if(dropRate = 3){
	///Drops Iron Ingots
	for(i = 0; i < dropAmount; i++){
		instance_create_depth(x, y, 0, obj_ironPickUp);
	}
}