if (keyboard_check_pressed(ord("1"))){
	window_set_size(360,640); 
}
if (keyboard_check_pressed(ord("2"))){
	window_set_size(540,960);
}
if (keyboard_check_pressed(ord("3"))){
	window_set_size(946,1664); //1664, 946
}
if (keyboard_check_pressed(vk_right)){
	room_goto_next()
}
if (keyboard_check_pressed(vk_left)){
	room_goto_previous()
}
if (keyboard_check_pressed(ord("R"))){
	room_restart()
}
if (keyboard_check_pressed(ord("T"))){
	global.yMove = 0;
}
if (keyboard_check_pressed(vk_end)){
	game_restart()
}
