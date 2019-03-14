instance_destroy();

if(obj_controller.sword_material = "wood" || obj_controller.sword_material = "copper"){
	obj_controller.sword_material = "steel";
	control.swordlvl = 2;
} else {
	control.stored[item.iron] += 3;
}
