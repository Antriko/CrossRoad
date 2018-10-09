//Delete old lane
if (owner.spawnHere != false) {
	arrayLen = array_length_1d(owner.obstacle); 
	for (i = 0; i < arrayLen; i++) {
		instance_destroy(owner.obstacle[i]);
	} 
}


randomthing = irandom(5);

//	Possibility
//	Enemy	- Starting, most common enemy
//	Coin	- 1 every 6-8 lanes
//	Comm	- 
//	Fast	- Starts showing after score > 25
//	Clouds	- Frequent
//	Bonus	- Appears once every 20 lanes
bonus = 20
if (objPlayer.movedUp/bonus = floor(objPlayer.movedUp/bonus)) {
	show_debug_message("Bonus spawn at score " + string(objPlayer.movedUp))
	randomthing = 6;
}


switch (randomthing) {
	case 0: owner.spawnHere = false; break;
	case 1: owner.spawnHere = "enemy";	
			if (irandom(1) = 1) {
				owner.spawnPlace = owner.spawnRight;
				owner.move = random_range(3, 6);
			} else {
				owner.spawnPlace = owner.spawnLeft;
				owner.move = random_range(-3, -6);
			}
			break;
	case 2: owner.spawnHere = "coin";	
			owner.spawnPlace = random_range(200,880);
			break;
	case 3: owner.spawnHere = "commercial";
			if (irandom(1) = 1) {
				owner.spawnPlace = owner.spawnRight;
				owner.move = random_range(3, 6);
			} else {
				owner.spawnPlace = owner.spawnLeft;
				owner.move = random_range(-3, -6);
			}
			break;
	case 4: owner.spawnHere = "fast";
			if (irandom(1) = 1) {
				owner.spawnPlace = owner.spawnRight;
				owner.move = random_range(12, 16);
			} else {
				owner.spawnPlace = owner.spawnLeft;
				owner.move = random_range(-12, -16);
			}
			break;
	case 5: owner.spawnHere = "cloud";
			owner.random1 = irandom(8);
			owner.random2 = irandom(8);
			while (owner.random1 = owner.random2) {
				owner.random2 = irandom(8)	
			}
	case 6: owner.spawnHere = "bonus";
			if (irandom(1) = 1) {
				owner.spawnPlace = owner.spawnRight;
				owner.move = random_range(4, 8);
			} else {
				owner.spawnPlace = owner.spawnLeft;
				owner.move = random_range(-4, -8);
			}
			break;
}

owner.j = 0;
owner.alarm[0] = 1;