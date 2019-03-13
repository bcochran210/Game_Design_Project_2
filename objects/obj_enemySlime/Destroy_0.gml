//Drops
dropRate = irandom_range(1, 3);
dropAmount = irandom_range(1, 10);
if(dropRate = 1){
	for(i = 0; i < dropAmount; i++){
		instance_create_depth(x, y, 0, obj_stonePickUp);
	}
}
if(dropRate = 2){
	for(i = 0; i < dropAmount; i++){
		instance_create_depth(x, y, 0, obj_arrowPickUp);
	}
}
if(dropRate = 3){
	for(i = 0; i < dropAmount; i++){
		instance_create_depth(x, y, 0, obj_logPickUp);
	}
}
	/*case "uncommon": {
		if(dropRate = 1){
			//Drops Copper Sword
			instance_create_depth(x, y, 0, obj_copperPickUp);
		}
		if(dropRate = 2){
			//Drops Copper Ingots
			for(i = 0; i < dropAmount; i++){
				instance_create_depth(x, y, 0, obj_copperPickUp);
			}
		}
		if(dropRate = 3){
			//Drops Copper Pickaxe
			instance_create_depth(x, y, 0, obj_copperPickaxeDrop);
		}
	}
	case "rare": {
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
	}
	case "super rare": {
		if(dropRate = 1){
			//Drops Gold Sword
			instance_create_depth(x, y, 0, obj_goldSwordPickUp);
		}
		if(dropRate = 2){
			//Drops Gold Pickaxe
			instance_create_depth(x, y, 0, obj_goldPickaxeDrop);
		}
		if(dropRate = 3){
			//Drops Gold Ingots
			for(i = 0; i < dropAmount; i++){
				instance_create_depth(x, y, 0, obj_goldPickUp);
			}
		}
	}*/