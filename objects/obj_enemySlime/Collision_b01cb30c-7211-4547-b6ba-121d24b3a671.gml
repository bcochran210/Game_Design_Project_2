switch obj_controller.sword_material {
	case "wood": {
		enemy_health -= 10;
	}
	case "copper": {
		enemy_health -= 15;
	}
	case "steel": {
		enemy_health -= 20;
	}
	case "gold": {
		enemy_health -= 25;
	}
	case "diamond": {
		enemy_health -= 30;
	}
}
instance_destroy(other);