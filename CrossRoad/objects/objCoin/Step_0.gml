y = owner.y;
yy = y;

if (selfDestruct = 1) {
	image_alpha -= 0.0035;
	if (image_alpha <= 0.05) {
		instance_destroy(self);	
	}
}

if (coinBurst = true) {
	switch (idThing) {
			case 0:	x = xx - spread; y = yy - spread; break;
			case 1:	y = yy - spread; break;
			case 2:	x = xx + spread; y = yy - spread; break;
			case 3:	x = xx - spread; break;
			case 4:	x = xx + spread; break;
			case 5:	x = xx - spread; y = yy + spread; break;
			case 6:	y = yy + spread; break;
			case 7:	x = xx + spread; y = yy + spread; break;
	}
}