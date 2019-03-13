if(obj_controller.time_of_day = "day"){
	draw_sprite(Day_Background, 0, x, y);
} else if (obj_controller.time_of_day = "night") {
	draw_sprite(Night_Background, 0, x, y);
}
