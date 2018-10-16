scrCamera();
id_ = 0;
j = 0;
setNew = false;
spawnRight = 1200;
spawnLeft = -120;
spawnHere = false;
spawnItem = false;
move = 0;
debug = false;


if (irandom(3) != 0) {
	spawnHere = false;	
} else {
	spawnHere = "enemy";	
	if (irandom(1) = 1) {
		spawnPlace = spawnRight;
		move = random_range(3, 6);
	} else {
		spawnPlace = spawnLeft;
		move = random_range(-3, -6);
	}
}


child = instance_create_layer(0,0,"Instances", objMiniChild);
child.owner = id;

alarm[0] = 1;