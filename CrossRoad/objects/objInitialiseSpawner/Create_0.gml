childList[0] = objChild1;
childList[1] = objChild2;
childList[2] = objChild3;
childList[3] = objChild4;
childList[4] = objChild5;
childList[5] = objChild6;
childList[6] = objChild7;
childList[7] = objChild8;
childList[8] = objChild9;
childList[9] = objChild10;
childList[10] = objChild11;

for (i = 0; i <= 10; i++) {
	child[i] = instance_create_layer(0,0,"Instances",childList[i]);
}



dist = .1;
beginingPosition = .025;
for (i = 0; i<= 10; i++){
	position[i] = beginingPosition + (i*dist);
}

scrCamera();
objPlayer.y = cgvy+(cgvh*position[7]);
show_debug_message(position)