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
		if(obj_controller.player_state = "bow"){
			sprite_index = spr_player_bow_idle;
		} else {
			sprite_index = spr_player;
		}
	} else if (mouse_check_button(mb_left) && (obj_controller.player_state = "sword")){
		//player sword attack
		if(obj_controller.sword_material = "wood"){
			sprite_index = spr_player_sword_attack;
		}
		if(obj_controller.sword_material = "copper"){
			sprite_index = spr_player_sword_attack_copper;
		}
		if(obj_controller.sword_material = "steel"){
			sprite_index = spr_player_sword_attack_steel;
		}
		if(obj_controller.sword_material = "gold"){
			sprite_index = spr_player_sword_attack_gold;
		}
		if(obj_controller.sword_material = "diamond"){
			sprite_index = spr_player_sword_attack_diamond;
		}
	} else if (mouse_check_button(mb_left) && (obj_controller.player_state = "mine")){
		if(obj_controller.axe_material = "wood"){
			sprite_index = spr_player_mine;
		}
		if(obj_controller.axe_material = "copper"){
			sprite_index = spr_player_mine_copper;
		}
		if(obj_controller.axe_material = "steel"){
			sprite_index = spr_player_mine_steel;
		}
		if(obj_controller.axe_material = "gold"){
			sprite_index = spr_player_mine_gold;
		}
		if(obj_controller.axe_material = "diamond"){
			sprite_index = spr_player_mine_diamond;
		}
	} else {
		//player idle
		if(obj_controller.player_state = "bow"){
			sprite_index = spr_player_bow_idle;
		} else {
			sprite_index = spr_player;
		}
	}
} else {
	if (y_spd < 0){
		//player jump
		sprite_index = spr_player_jump;
	} else {
		//player fall
		sprite_index = spr_player_fall;
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
	while(!place_meeting(x, y + sign(y_spd), obj_block)){
		y += sign(y_spd);
	}
	y_spd = 0;
}

/*COAL*/
if(place_meeting(x + x_spd, y, obj_ore_coal)){
	while(!place_meeting(x + sign(x_spd), y, obj_ore_coal)){
		x += sign(x_spd);
	}
	x_spd = 0;
}

if(place_meeting(x, y + y_spd, obj_ore_coal)){
	while(!place_meeting(x, y + y_spd, obj_ore_coal)){
		y += sign(y_spd);
	}
	y_spd = 0;
}
/*COPPER*/
if(place_meeting(x + x_spd, y, obj_ore_copper)){
	while(!place_meeting(x + sign(x_spd), y, obj_ore_copper)){
		x += sign(x_spd);
	}
	x_spd = 0;
}

if(place_meeting(x, y + y_spd, obj_ore_coal)){
	while(!place_meeting(x, y + y_spd, obj_ore_coal)){
		y += sign(y_spd);
	}
	y_spd = 0;
}
/*IRON*/
if(place_meeting(x + x_spd, y, obj_ore_iron)){
	while(!place_meeting(x + sign(x_spd), y, obj_ore_iron)){
		x += sign(x_spd);
	}
	x_spd = 0;
}

if(place_meeting(x, y + y_spd, obj_ore_iron)){
	while(!place_meeting(x, y + y_spd, obj_ore_iron)){
		y += sign(y_spd);
	}
	y_spd = 0;
}
/*GOLD*/
if(place_meeting(x + x_spd, y, obj_ore_gold)){
	while(!place_meeting(x + sign(x_spd), y, obj_ore_gold)){
		x += sign(x_spd);
	}
	x_spd = 0;
}

if(place_meeting(x, y + y_spd, obj_ore_gold)){
	while(!place_meeting(x, y + y_spd, obj_ore_gold)){
		y += sign(y_spd);
	}
	y_spd = 0;
}
/*DIAMOND*/
if(place_meeting(x + x_spd, y, obj_ore_diamond)){
	while(!place_meeting(x + sign(x_spd), y, obj_ore_diamond)){
		x += sign(x_spd);
	}
	x_spd = 0;
}

if(place_meeting(x, y + y_spd, obj_ore_diamond)){
	while(!place_meeting(x, y + y_spd, obj_ore_diamond)){
		y += sign(y_spd);
	}
	y_spd = 0;
}

if(sprite_index = spr_player_sword_attack || sprite_index = spr_player_sword_attack_copper
	|| sprite_index = spr_player_sword_attack_diamond || sprite_index = spr_player_sword_attack_gold 
	|| sprite_index = spr_player_sword_attack_steel){
	if(image_xscale < 0){
		if(place_meeting(x + 64, y, obj_enemySlime)){
			obj_controller.player_health -= 1;
			x -= 5;
			y -= 5;
		}
	} else if (image_xscale > 0){
		if(place_meeting(x - 64, y, obj_enemySlime)){
			obj_controller.player_health -= 1;
			x += 5;
			y -= 5;
		}
	}
} else {
	if(place_meeting(x, y, obj_enemySlime)){
		obj_controller.player_health -= 1;
		if(image_xscale < 0){
			x -= 5;
			y -= 5;
		} else if (image_xscale > 0){
			x += 5;
			y -= 5;
		}
	}
}

//Jump
if(place_meeting(x, y + 1, obj_block) && (key_up) && !place_meeting(x, y - 1, obj_block)){
	y_spd = -jumpSpd;
} 

//Mining
/*Located within block code*/
if(obj_controller.player_state = "mine" && (sprite_index = spr_player_mine || sprite_index = spr_player_mine_copper
	|| sprite_index = spr_player_mine_diamond || sprite_index = spr_player_mine_gold 
	|| sprite_index = spr_player_mine_steel)){
	if(image_index = 4){
		instance_create_depth(mouse_x, mouse_y, 0, obj_miningHitBox);
	}
}

//Attacking
if(obj_controller.player_state = "bow"){
	if(mouse_check_button_pressed(mb_left)){
		counter = 0;
	}
	if(mouse_check_button(mb_left)){
		sprite_index = spr_player_bow_fire;
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
		sprite_index = spr_player_bow_idle;
	}
}

if(obj_controller.player_state = "sword" && (sprite_index = spr_player_sword_attack || sprite_index = spr_player_sword_attack_copper
	|| sprite_index = spr_player_sword_attack_diamond || sprite_index = spr_player_sword_attack_gold || sprite_index = spr_player_sword_attack_steel)){
	if(image_index = 3){
		audio_play_sound(Sfx_SwingingMiss, 0, 0);
		hb = instance_create_depth(x, y, 0, obj_swordHitBox)
		hb.image_xscale = obj_player.image_xscale;
	}
}

//Place Blocks
if(mouse_wheel_down() && block_to_place = obj_dirt){
	block_in_hand = "stone";
	block_to_place = obj_stone;
} else if (mouse_wheel_down() && block_to_place = obj_stone){
	block_in_hand = "log";
	block_to_place = obj_log;
} else if (mouse_wheel_down() && block_to_place = obj_log){
	block_in_hand = "dirt";
	block_to_place = obj_dirt;
} 

/*Fix this*/
if(block_in_hand = "dirt"){
	if(mouse_check_button_pressed(mb_right) && place_free(mouse_x + 32, mouse_y + 32) 
		&& obj_controller.dirt_block_held > 0){
		var place_block_x = (floor(mouse_x/64)*64);
		var place_block_y = (floor(mouse_y/64)*64);
		with instance_create_depth(place_block_x, place_block_y, 0, block_to_place){
			if(!place_meeting(x + 64, y, obj_block) && !place_meeting(x - 1, y, obj_block) 
				&& !place_meeting(x, y + 64, obj_block) && !place_meeting(x, y - 1, obj_block)){
				instance_destroy();	
			}
		}
		if(block_to_place = obj_dirt){
			obj_controller.dirt_block_held--;
			//controller.stored{item.dirt}--;
		}
	}
} else if (block_in_hand = "stone"){
	if(mouse_check_button_pressed(mb_right) && place_free(mouse_x + 32, mouse_y + 32) 
		&& obj_controller.stone_block_held > 0){
		var place_block_x = (floor(mouse_x/64)*64);
		var place_block_y = (floor(mouse_y/64)*64);
		with instance_create_depth(place_block_x, place_block_y, 0, block_to_place){
			if(!place_meeting(x + 64, y, obj_block) && !place_meeting(x - 1, y, obj_block) 
				&& !place_meeting(x, y + 64, obj_block) && !place_meeting(x, y - 1, obj_block)){
				instance_destroy();	
			}
		}
		if (block_to_place = obj_stone){
			obj_controller.stone_block_held--;
		} 
	}
} else if (block_in_hand = "log"){
	if(mouse_check_button_pressed(mb_right) && place_free(mouse_x + 32, mouse_y + 32) 
		&& obj_controller.log_block_held > 0){
		var place_block_x = (floor(mouse_x/64)*64);
		var place_block_y = (floor(mouse_y/64)*64);
		with instance_create_depth(place_block_x, place_block_y, 0, block_to_place){
			if(!place_meeting(x + 64, y, obj_block) && !place_meeting(x - 1, y, obj_block) 
				&& !place_meeting(x, y + 64, obj_block) && !place_meeting(x, y - 1, obj_block)){
				instance_destroy();	
			}
		}
		if (block_to_place = obj_log){
			obj_controller.log_block_held--;
		}	
	}
}

//Developer Keys
/*Restart Game*/
if(keyboard_check_pressed(ord("R"))){
	game_restart();
}

//Update movement
x += x_spd;
y += y_spd;