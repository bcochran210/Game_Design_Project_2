var x_view = camera_get_view_x(view_camera[0]);
var y_view = camera_get_view_y(view_camera[0]);

//Draw HUD
if(time_of_day = "day"){
	draw_sprite(spr_hud, 0, x_view, y_view);
} else if (time_of_day = "night"){
	draw_sprite(spr_hud_night, 0, x_view, y_view);
}

//Draw Health
draw_healthbar(x_view + 353, y_view + 50, x_view + 676, y_view + 77, player_health, c_black, c_red, c_green, 0, false, false);

//Days
draw_set_font(font0);
draw_set_color(c_green);
draw_text(x_view + 16, y_view + 50, "Days: " + string_digits(obj_controller.num_of_days));
draw_text(x_view + 16, y_view + 75, "Daylight Remaining: " + string_digits(time_in_day / 10000));

//Pausing
if(pause_game){
	draw_sprite(spr_pause, 0, x_view, y_view);
}
