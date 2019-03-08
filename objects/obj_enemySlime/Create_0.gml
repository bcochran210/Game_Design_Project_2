walkSpd = 2;
dir = -1;
y_spd = 0;
x_spd = 0;
grav = 1;
type = "common";

alarm[0] = 60;

switch type{
	case "common":
	{
		enemy_health = 10;
		break;
	}
	case "uncommon":
	{
		enemy_health = 20;
		break;
	}
	case "rare":
	{
		enemy_health = 50;
		break;
	}
	case "super rare":
	{
		enemy_health = 100;
		break;
	}
}
