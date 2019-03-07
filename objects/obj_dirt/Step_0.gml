//Mining
/*if(obj_player.playerState = "mine"){
	if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)){
		instance_destroy();
	}
}*/

if(place_meeting(x, y, obj_miningHitBox)){
	instance_destroy();
}



