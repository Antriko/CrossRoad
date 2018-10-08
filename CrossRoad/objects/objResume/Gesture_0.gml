objPause.sprite_index = sprPause;
instance_activate_all();

arLen = array_length_1d(objPause.pauseGUI);

for (i = 0; i < arLen; i++) {
	instance_destroy(objPause.pauseGUI[i])	
}