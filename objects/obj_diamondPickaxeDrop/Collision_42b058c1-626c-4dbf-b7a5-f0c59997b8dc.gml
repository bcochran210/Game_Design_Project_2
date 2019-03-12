instance_destroy();

if(obj_player.axe_material = "wood" || obj_player.axe_material = "copper" || obj_player.axe_material = "steel" 
	|| obj_player.axe_material = "gold"){
	obj_player.axe_material = "diamond";
} else {
	obj_controller.diamond_ore_held += 3;
}
