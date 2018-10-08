switch (position) {
	case 0: position = 1; break;
	case 1: positionX = cgvx+(cgvw*.1); break;
	case 2: positionX = cgvx+(cgvw*.2); break;
	case 3: positionX = cgvx+(cgvw*.3); break;
	case 4: positionX = cgvx+(cgvw*.4); break;
	case 5: positionX = cgvx+(cgvw*.5); break;
	case 6: positionX = cgvx+(cgvw*.6); break;
	case 7: positionX = cgvx+(cgvw*.7); break;
	case 8: positionX = cgvx+(cgvw*.8); break;
	case 9: positionX = cgvx+(cgvw*.9); break;
	case 10: position = 9; break;
}

x = lerp(x, positionX,.1);


if (angleFlicked < 135) and (angleFlicked > 45) {
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
	scrDownPosition();
	goDown += 1;
	angleFlicked = 0;
}
