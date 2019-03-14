instance_destroy();

if(obj_controller.axe_material = "wood" || obj_controller.axe_material = "copper"){
	obj_controller.axe_material = "steel";
	control.picklvl = 2;
} else {
	control.stored[item.iron] += 3;
}
