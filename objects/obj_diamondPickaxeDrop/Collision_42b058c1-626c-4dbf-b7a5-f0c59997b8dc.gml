instance_destroy();

if(obj_controller.axe_material = "wood" || obj_controller.axe_material = "copper" || obj_controller.axe_material = "steel" 
	|| obj_controller.axe_material = "gold"){
	obj_controller.axe_material = "diamond";
} else {
	obj_controller.diamond_ore_held += 3;
}
