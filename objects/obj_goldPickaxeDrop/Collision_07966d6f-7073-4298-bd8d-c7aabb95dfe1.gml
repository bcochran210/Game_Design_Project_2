instance_destroy();

if(obj_player.axe_material = "wood" || obj_player.axe_material = "copper" || obj_player.axe_material = "steel"){
	obj_player.axe_material = "gold";
} else {
	obj_controller.gold_ore_held += 3;
}
