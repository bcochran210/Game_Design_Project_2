//Mining
if(obj_player.playerState = "mine"){
	if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)){
		instance_destroy();
	}
}

if(!position_meeting(x + 32, y + 32, obj_block) && !position_meeting(x - 32, y - 32, obj_block)){
	gravity = 1;
}
