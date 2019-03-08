draw_self();

var drawEnemyHealth;

switch type{
	case "common":
	{
		drawEnemyHealth = ((enemy_health/10) * 100);
		break;
	}
	case "uncommon":
	{
		drawEnemyHealth = ((enemy_health/10) * 50);
		break;
	}
	case "rare":
	{
		drawEnemyHealth = ((enemy_health/10) * 20);
		break;
	}
	case "super rare":
	{
		drawEnemyHealth = 100;
		break;
	}
}

draw_healthbar(x - 32, y - 40, x + 32, y - 30, drawEnemyHealth, c_black, c_red, c_green, 0, false, false);
