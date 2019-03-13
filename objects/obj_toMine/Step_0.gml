if(place_meeting(x, y, obj_player)){
	if(obj_controller.time_of_day = "day"){	
		room_goto(rm_lowerLevel);
	} else if (obj_controller.time_of_day = "night"){
		display_message = true;
	}
} else {
	display_message = false;
}