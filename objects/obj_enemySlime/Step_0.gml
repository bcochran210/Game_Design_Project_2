y_spd += grav;

//Check Collisions
if(place_meeting(x + x_spd, y, obj_block)){
	while(!place_meeting(x + sign(x_spd), y, obj_block)){
		x += sign(x_spd);
	}
	x_spd = 0;
	
	dir *= -1;
}

if(place_meeting(x + x_spd, y, obj_bounds)){
	while(!place_meeting(x + sign(x_spd), y, obj_bounds)){
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
