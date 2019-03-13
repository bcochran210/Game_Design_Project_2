//Drops
dropRate = irandom_range(1, 3);
dropAmount = irandom_range(1, 10);
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