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

randomthing = irandom(3); show_debug_message(randomthing);
if (randomthing = 1) {
	spawnHere = false;	
} else if (randomthing = 2) {
	spawnHere = "enemy";	
	if (irandom(1) = 1) {
		spawnPlace = spawnRight;
		move = random_range(3, 6);
	} else {
		spawnPlace = spawnLeft;
		move = random_range(-3, -6);
	}
} else if (randomthing = 3) {
	spawnHere = "coin";	
	spawnPlace = random_range(200,880);
} else {	
	if (irandom(1) = 1) {
		spawnPlace = spawnRight;
		move = random_range(1, 3);
	} else {
		spawnPlace = spawnLeft;
		move = random_range(-1, -3);
	}
}


child = instance_create_layer(0,0,"Instances", objMiniChild);
child.owner = id;

alarm[0] = 1;