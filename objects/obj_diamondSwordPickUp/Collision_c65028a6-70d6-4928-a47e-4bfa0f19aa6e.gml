instance_destroy();

if(obj_controller.sword_material = "wood" || obj_controller.sword_material = "copper" || obj_controller.sword_material = "steel" || obj_controller.sword_material = "gold"){
	obj_controller.sword_material = "diamond";
	control.swordlvl = 4;
} else {
	control.stored[item.diamond] += 3;
}
