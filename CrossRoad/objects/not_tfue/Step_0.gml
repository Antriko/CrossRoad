if (distance_to_point(mouse_x, mouse_y) > 1)
{
	move_towards_point(mouse_x, mouse_y, 4);
}
else
{
	speed = 0;	
}
image_angle = direction;