instance_destroy();

if(obj_controller.axe_material = "wood" || obj_controller.axe_material = "copper" || obj_controller.axe_material = "steel"){
	obj_controller.axe_material = "gold";
	control.picklvl = 3;
} else {
	control.stored[item.gold] += 3;
}
