y_spd = y_spd + grav;

if(place_meeting(x, y + y_spd, obj_block)){
	while(!place_meeting(x, y + y_spd, obj_block)){
		y += sign(y_spd);
	}
	y_spd = 0;
}

y += y_spd;
