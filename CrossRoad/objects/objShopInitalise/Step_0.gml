if (spawn = true) {
	spawn = false;	
	for (i = 0; i < array_length_1d(powerItem); i++) {
		powerUps[i] = instance_create_layer(0,0,"Instances", shopItem[i]);
	}
	for (i = 0; i < array_length_1d(planeBorder); i++) {
		planes[i] = instance_create_layer(0,0,"Instances", planeBorder[i]);
	}
}

if (initiatePowerupShop = true) {
	selected = 0;
	initiatePowerupShop = false;
	difference = 0;
	
	powerLen = array_length_1d(powerUps);
	planeLen = array_length_1d(planes)
	
	for (i = 0; i < planeLen; i++) {
		planes[i].xpos = 2520;
	}
	for (i = 0; i < powerLen; i++) {
		powerUps[i].xpos = cgvx+(cgvw*.5);
	} 

} else if (initiatePlaneShop = true) {
	selected = 0;
	initiatePlaneShop = false;
	difference = 0;
	
	powerLen = array_length_1d(powerUps);
	planeLen = array_length_1d(planes)
	
	for (i = 0; i < powerLen; i++) {
		powerUps[i].xpos = -1080;
	}
	for (i = 0; i < planeLen; i++) {
		planes[i].xpos = cgvx+(cgvw*.5);
	} 
}