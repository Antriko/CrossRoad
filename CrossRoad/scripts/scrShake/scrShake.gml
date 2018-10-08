if (shake = true) {
	randX = random_range(argument[0], -argument[0]);
	randY = random_range(argument[0], -argument[0]);
	camera_set_view_pos(view_camera[0],cgvx+randX,cgvy+randY);
}

//cgvx = camera_get_view_x(view_camera[0]);
//cgvy = camera_get_view_y(view_camera[0]);