instance_destroy();

if(obj_controller.sword_material = "wood" || obj_controller.sword_material = "copper" || obj_controller.sword_material = "steel"){
	obj_controller.sword_material = "gold";
	control.swordlvl = 3;
} else {
	obj_controller.gold_ore_held += 3;
}
