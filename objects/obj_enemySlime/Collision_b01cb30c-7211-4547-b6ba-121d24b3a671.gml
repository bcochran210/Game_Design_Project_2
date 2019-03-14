switch obj_controller.sword_material {
	case "wood": {
		enemy_health -= 10;
		break;
	}
	case "copper": {
		enemy_health -= 15;
		break;
	}
	case "steel": {
		enemy_health -= 20;
		break;
	}
	case "gold": {
		enemy_health -= 25;
		break;
	}
	case "diamond": {
		enemy_health -= 30;
		break;
	}
}
audio_play_sound(Sfx_EnemyDeath, 0, 0);
instance_destroy(other);