switch (position) {
	case 0: position = 1; break;
	case 1: positionX = cgvx+(cgvw*.1); break;
	case 2: positionX = cgvx+(cgvw*.3); break;
	case 3: positionX = cgvx+(cgvw*.5); break;
	case 4: positionX = cgvx+(cgvw*.7); break;
	case 5: positionX = cgvx+(cgvw*.9); break;
	case 6: position = 5; break;
}

x = lerp(x, positionX,.1);


if (angleFlicked < 135) and (angleFlicked > 45) {
angleFlicked = 0;
show_debug_message("Going up")
}