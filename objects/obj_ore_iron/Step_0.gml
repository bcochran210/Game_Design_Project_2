if(place_meeting(x, y, obj_miningHitBox) && (obj_player.axe_material = "copper" ||
	obj_player.axe_material = "iron" || obj_player.axe_material = "gold" || 
	obj_player.axe_material = "diamond")){
	instance_destroy();
}