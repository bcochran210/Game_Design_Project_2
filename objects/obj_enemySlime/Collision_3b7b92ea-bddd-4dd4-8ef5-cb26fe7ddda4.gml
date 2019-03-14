if(obj_player.charge_level = "0"){
	enemy_health -= 5;
} else if (obj_player.charge_level = "1"){
	enemy_health -= 7;
} else if (obj_player.charge_level = "2"){
	enemy_health -= 10;
}
if(obj_arrow.direction = 1){
	x -= 5;
} else {
	x += 5;
}
y -= 5;
instance_destroy(other);