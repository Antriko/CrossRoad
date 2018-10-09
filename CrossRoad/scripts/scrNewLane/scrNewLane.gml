//Delete old lane
show_debug_message(owner.id_)
if (owner.spawnHere != false) {
	arrayLen = array_length_1d(owner.obstacle); 
	for (i = 0; i < arrayLen; i++) {
		instance_destroy(owner.obstacle[i]);
	} 
}


spawnList = irandom(5);

//	Possibility
//	Enemy	- Starting, most common enemy
//	Coin	- 1 every 6-8 lanes
//	Comm	- Starting, common enemy
//	Fast	- Starts showing after score > 25
//	Clouds	- Frequent
//	Bonus	- Appears once every 20 lanes
//	Big		- Appears once every 75 lanes

//Lower = Higher priority

bonus = 20
if (objPlayer.movedUp/bonus = floor(objPlayer.movedUp/bonus)) {
	show_debug_message("Bonus spawn at score " + string(objPlayer.movedUp))
	spawnList = 6;
}


bigBonus = 50;
if ((objPlayer.movedUp+1)/bigBonus = floor((objPlayer.movedUp+1)/bigBonus)) {
	spawnList = 11; owner.part = 3;
} else if ((objPlayer.movedUp)/bigBonus = floor((objPlayer.movedUp)/bigBonus)) {
	spawnList = 11; owner.part = 2;
} else if ((objPlayer.movedUp-1)/bigBonus = floor((objPlayer.movedUp-1)/bigBonus)) {
	spawnList = 11; owner.part = 1;
}

spawnItem = 10
if (objPlayer.movedUp/spawnItem = floor(objPlayer.movedUp/spawnItem)) {
	owner.spawnItem = true;
}

switch (spawnList) {
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
			break;
	case 6: owner.spawnHere = "bonus";
			if (irandom(1) = 1) {
				owner.spawnPlace = owner.spawnRight;
				owner.move = random_range(4, 8);
			} else {
				owner.spawnPlace = owner.spawnLeft;
				owner.move = random_range(-4, -8);
			}
			break;
	case 11: 
			owner.spawnHere = "bigBonus";
			switch (owner.part) {
				case 3:
					if (irandom(1) = 1) {
						owner.spawnPlace = owner.spawnRight;
						owner.move = 4;
					} else {
						owner.spawnPlace = owner.spawnLeft;
						owner.move = -4;
					}
					objParentSpawner.otherMove = owner.move; 
					objParentSpawner.otherSpawnPlace = owner.spawnPlace;
					break;
				case 2:
				case 1:
					owner.move = objParentSpawner.otherMove;
					owner.spawnPlace = objParentSpawner.otherSpawnPlace;
					break;
			}
			break;
}

owner.j = 0;
owner.alarm[0] = 1;