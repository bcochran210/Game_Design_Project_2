if(!place_meeting(x + 64, y, obj_block) && !place_meeting(x - 1, y, obj_block) 
	&& !place_meeting(x, y + 64, obj_block) && !place_meeting(x, y - 1, obj_block)){
		gravity = 1;
}
