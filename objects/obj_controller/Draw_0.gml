var x_view = camera_get_view_x(view_camera[0]);
var y_view = camera_get_view_y(view_camera[0]);

draw_text(x_view + 16, y_view + 600, "State: " + obj_player.playerState);
draw_text(x_view + 700, y_view + 550, "Blocks Held:");
draw_text(x_view + 700, y_view + 575, "Dirt: " + string_digits(obj_controller.dirt_block_held));
draw_text(x_view + 700, y_view + 600, "Stone: " + string_digits(obj_controller.stone_block_held));
draw_text(x_view + 700, y_view + 625, "Log: " + string_digits(obj_controller.log_block_held));


if(obj_player.playerState = "bow"){
	draw_text(x_view + 16, y_view + 650, "Arrows: " + string_digits(obj_controller.arrow_count));
	draw_text(x_view + 16, y_view + 700, "Drawn: " + string(obj_player.arrow_drawn));
}
