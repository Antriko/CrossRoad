sprite_index = noone;
instance_deactivate_all(true);
instance_activate_object(objSound);

i=0;
pauseGUI[i] = instance_create_layer(x,y,"GUI",objResume); i+=1;
pauseGUI[i] = instance_create_layer(x,y,"GUI",objMuteSFX); i+=1;
pauseGUI[i] = instance_create_layer(x,y,"GUI",objMuteBackground); i+=1;