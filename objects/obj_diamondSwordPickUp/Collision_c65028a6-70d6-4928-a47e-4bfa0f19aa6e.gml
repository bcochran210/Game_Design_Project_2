instance_destroy();

if(obj_player.sword_material = "wood" || obj_player.sword_material = "copper" || obj_player.sword_material = "steel" || obj_player.sword_material = "gold"){
	obj_player.sword_material = "diamond";
} else {
	obj_controller.diamond_ore_held += 3;
}
