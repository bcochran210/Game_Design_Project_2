var x_view = camera_get_view_x(view_camera[0]);
var y_view = camera_get_view_y(view_camera[0]);

draw_text(x_view + 16, y_view + 550, "State: " + obj_player.playerState);
draw_text(x_view + 16, y_view + 575, "Sword Material: " + obj_player.sword_material);
draw_text(x_view + 16, y_view + 600, "Pickaxe Material: " + obj_player.axe_material);
draw_text(x_view + 700, y_view + 550, "Blocks Held:");
draw_text(x_view + 700, y_view + 575, "Dirt: " + string_digits(obj_controller.dirt_block_held));
draw_text(x_view + 700, y_view + 600, "Stone: " + string_digits(obj_controller.stone_block_held));
draw_text(x_view + 700, y_view + 625, "Log: " + string_digits(obj_controller.log_block_held));


if(obj_player.playerState = "bow"){
	draw_text(x_view + 16, y_view + 650, "Arrows: " + string_digits(obj_controller.arrow_count));
	draw_text(x_view + 16, y_view + 675, "Drawn: " + string(obj_player.arrow_drawn));
}

//Draw Health
draw_healthbar(x_view + 16, y_view + 700, x_view + 1000, y_view + 725, obj_player.player_health, c_black, c_red, c_green, 0, false, false);

//Time of Day
draw_text(x_view + 16, y_view + 500, "Time of Day: " + obj_controller.time_of_day);
draw_text(x_view + 16, y_view + 525, "Days: " + string_digits(obj_controller.num_of_days));