//Player input
key_right = keyboard_check(ord("A"));
key_left = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

var movement = key_left - key_right;

x_spd = movement * walkSpd;
y_spd = y_spd + grav;

/*Change State*/
key_base = keyboard_check(ord("1"));
key_mine = keyboard_check(ord("2"));
key_sword = keyboard_check(ord("3"));
key_bow = keyboard_check(ord("4"));

if(key_base){ obj_controller.player_state = "base";}
if(key_mine){ obj_controller.player_state = "mine";}
if(key_sword){ obj_controller.player_state = "sword";}
if(key_bow){ obj_controller.player_state = "bow";}

//Sprites
if (movement != 0){
	image_xscale = movement;
}
if (place_meeting(x, y + 1, obj_block)){
	if (movement != 0){
		//player walking
		sprite_index = spr_player;
	} else if (mouse_check_button_pressed(mb_left) && (obj_controller.player_state = "sword")){
		//player sword attack
		sprite_index = spr_player_sword_attack;
	} else {
		//player idle
		sprite_index = spr_player;
	}
} else {
	if (y_spd < 0){
		//player jump
		sprite_index = spr_player;
	} else {
		//player fall
		sprite_index = spr_player;
	}
}


//Collisions
if(place_meeting(x + x_spd, y, obj_block)){
	while(!place_meeting(x + sign(x_spd), y, obj_block)){
		x += sign(x_spd);
	}
	x_spd = 0;
}

if(place_meeting(x, y + y_spd, obj_block)){
	while(!place_meeting(x, y + y_spd, obj_block)){
		y += sign(y_spd);
	}
	y_spd = 0;
}

if(sprite_index = spr_player_sword_attack){
	if(place_meeting(x - 64, y, obj_enemySlime)){
		obj_controller.player_health -= 1;
		x -= 5;
		y -= 5;
	}
} else {
	if(place_meeting(x, y, obj_enemySlime)){
		obj_controller.player_health -= 1;
		x -= 5;
		y -= 5;
	}
}

//Jump
if(place_meeting(x, y + 1, obj_block) && (key_up)){
	y_spd = -jumpSpd;
}

//Mining
/*Located withing block code*/
if(mouse_check_button_pressed(mb_left)){
	instance_create_depth(mouse_x, mouse_y, 0, obj_miningHitBox);
}

//Attacking
if(obj_controller.player_state = "bow"){
	if(mouse_check_button_pressed(mb_left)){
		counter = 0;
	}
	if(mouse_check_button(mb_left)){
		counter ++;
	} 
	if(mouse_check_button_released(mb_left) && arrow_drawn && obj_controller.arrow_count > 0){
		with instance_create_depth(x, y, 0, obj_arrow){
			if(other.counter / room_speed) < 0 {
				speed = 10;
				charge_level = "0";
			}
			if(other.counter / room_speed) > .5 {
				speed = 15;
				charge_level = "1";
			}
			if(other.counter / room_speed) > 1 {
				speed = 25;
				charge_level = "2";
			}
		}
		arrow_drawn = false;
		obj_controller.arrow_count --;
		alarm[0] = 30;
	}
}

if(obj_controller.player_state = "sword"){
	if(mouse_check_button_pressed(mb_left)){
		with instance_create_depth(x, y, 0, obj_swordHitBox){
			image_xscale = obj_player.image_xscale;
		}
	}
}

//Place Blocks
if(mouse_check_button_pressed(mb_right) && place_free(mouse_x + 32, mouse_y + 32) 
	&& obj_controller.dirt_block_held > 0){
	var place_block_x = (floor(mouse_x/64)*64);
	var place_block_y = (floor(mouse_y/64)*64);
	with instance_create_depth(place_block_x, place_block_y, 0, obj_dirt){
		if(!place_meeting(x + 64, y, obj_dirt) && !place_meeting(x - 1, y, obj_dirt) 
			&& !place_meeting(x, y + 64, obj_dirt) && !place_meeting(x, y - 1, obj_dirt)){
			instance_destroy();	
		}
	}
	obj_controller.dirt_block_held--;
}

//Developer Keys
/*Restart Game*/
if(keyboard_check_pressed(ord("R"))){
	game_restart();
}

//Update movement
x += x_spd;
y += y_spd;