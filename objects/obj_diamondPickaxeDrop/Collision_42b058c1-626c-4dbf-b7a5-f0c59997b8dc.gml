instance_destroy();

if(obj_controller.axe_material = "wood" || obj_controller.axe_material = "copper" || obj_controller.axe_material = "steel" 
	|| obj_controller.axe_material = "gold"){
	obj_controller.axe_material = "diamond";
	control.picklvl = 4;
} else {
	obj_controller.diamond_ore_held += 3;
}
