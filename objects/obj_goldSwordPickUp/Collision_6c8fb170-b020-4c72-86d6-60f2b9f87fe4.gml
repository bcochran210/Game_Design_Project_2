instance_destroy();

if(obj_player.sword_material = "wood" || obj_player.sword_material = "copper" || obj_player.sword_material = "steel"){
	obj_player.sword_material = "gold";
} else {
	obj_controller.gold_ore_held += 3;
}
