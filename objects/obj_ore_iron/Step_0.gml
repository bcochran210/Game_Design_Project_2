if(place_meeting(x, y, obj_miningHitBox) && (obj_controller.axe_material = "copper" ||
	obj_controller.axe_material = "steel" || obj_controller.axe_material = "gold" || 
	obj_controller.axe_material = "diamond")){
	instance_destroy();
}