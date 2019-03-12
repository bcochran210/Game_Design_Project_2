y_spd += grav;

//Check Collisions
if(place_meeting(x + x_spd, y, obj_block)){
	while(!place_meeting(x + sign(x_spd), y, obj_block)){
		x += sign(x_spd);
	}
	x_spd = 0;
	
	dir *= -1;
}

if(place_meeting(x, y + y_spd, obj_block)){
	while(!place_meeting(x, y + y_spd, obj_block)){
		y += sign(y_spd);
	}
	y_spd = 0;
}

//Healh Check
if(enemy_health <= 0){
	instance_destroy();
}

//Change Sprite Direction
image_xscale = sign(dir);

//Update Movment
x += x_spd;
y += y_spd;

//Drops
if(enemy_health <= 0){
	randomize();
	var drop;
	dropRate = irandom_range(1, 3);
	dropAmount = irandom_range(1, 10);
	switch type {
		/*ISSUE HERE WITH SPAWNS, CHECK WITH THORTON*/
		case "common": {
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
		}
		case "uncommon": {
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
		}
	}
}