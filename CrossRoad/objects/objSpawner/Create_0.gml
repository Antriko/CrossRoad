position = random_range(1,2)
switch (position) {
	case 1: x = 1080; break;	
	case 2: x = 0; break;
}

//	1/4 chance of spawning

yRepeat = 8;
xRepeat = 8;
repeat(8) {
	repeat(8) {
		instance_create_layer((xRepeat*160)+1080,(yRepeat*160)+100,"Instances",objEnemy)
		xRepeat -= 1;
	}
	xRepeat = 8;
	yRepeat -= 1;
}