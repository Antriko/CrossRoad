switch (mode) {
	case 0: 
		x = lerp(x, left, .2); 
		if (x = left) {
			mode = 1;
		}
	case 1: 
		x = lerp(x, right, .2); 
		if (x = right) {
			mode = 0;
		}
}

y = owner.y; 

if (y > room_height) {
	instance_destroy(self);
}