switch (position) {
	case 0: position = 1; break;
	case 1: positionX = cgvx+(cgvw*.1); break;
	case 2: positionX = cgvx+(cgvw*.23); break;
	case 3: positionX = cgvx+(cgvw*.36); break;
	case 4: positionX = cgvx+(cgvw*.5); break;
	case 5: positionX = cgvx+(cgvw*.63); break;
	case 6: positionX = cgvx+(cgvw*.76); break;
	case 7: positionX = cgvx+(cgvw*.9); break;
	case 8: position = 7; break;
}

x = lerp(x, positionX,.1);

if (angleFlicked = 0){ 
	//do nothing
} else if (angleFlicked < 135) and (angleFlicked > 45) {
	if (goDown = 0) {
		movedUp += 1;
		objMiniChild.setNew = true;
	}
	goDown -= 1;
	angleFlicked = 0;
	scrUpPosition();
	if (goDown < 0) {
		goDown = 0
	}
} else if (angleFlicked < 315) and (angleFlicked > 225) and (goDown < 3) {
	objMiniChild.setNew = false;
	scrDownPosition();
	goDown += 1;
	angleFlicked = 0;
} else if (angleFlicked < 225) and (angleFlicked > 135) {
	objPlayer.position -= 1;
	angleFlicked = 0;
} else if (angleFlicked < 45) or (angleFlicked > 315) {
	objPlayer.position += 1;
	angleFlicked = 0;
}
scrShake(shakeScale);