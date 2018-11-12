switch (spawnHere) {
	case "enemy":	obstacle[j] = instance_create_layer(spawnPlace, y, "Instances", objEnemy);
					obstacle[j].owner = id;
					alarm[0] = 120;
					break;
	case "coin":	obstacle[j] = instance_create_layer(spawnPlace, y, "Instances", objCoin);
					obstacle[j].owner = id;
					break;
	case "commercial":
					obstacle[j] = instance_create_layer(spawnPlace, y, "Instances", objCommercial);
					obstacle[j].owner = id;
					alarm[0] = 240;
					break;
	case "fast":	obstacle[j] = instance_create_layer(spawnPlace, y, "Instances", objFastPlane);
					obstacle[j].owner = id;
					alarm[0] = 90;
					break;
	case "cloud":	for (i = 0; i < 3; i++) {
						randomNum[i] = irandom(6);
						if (i = 1) {
							while (randomNum[0] = randomNum[i]) {
								randomNum[i] = irandom(6);
							}
						} else if (i = 2) {
							while (randomNum[0] = randomNum[i]) or (randomNum[1] = randomNum[i]) {
								randomNum[i] = irandom(6);
							}
						}
						obstacle[i] = instance_create_layer(scrMovement(randomNum[i]),y,"Instances",objCloud);
						obstacle[i].owner = id;
					}
					break;
	case "bonus":	obstacle[j] = instance_create_layer(spawnPlace, y, "Instances", objPrivateJet);
					obstacle[j].owner = id;
					break;
	case "bigBonus":
					switch (part) {
						case 1:	obstacle[j] = instance_create_layer(spawnPlace, y, "Instances", objBig1);
								obstacle[j].owner = id;	break;
						case 2:	obstacle[j] = instance_create_layer(spawnPlace, y, "Instances", objBig2);
								obstacle[j].owner = id;	break;
						case 3:	obstacle[j] = instance_create_layer(spawnPlace, y, "Instances", objBig3);
								obstacle[j].owner = id;	break;
					}
					for (i = 1; i <= 9; i++) {
						obstacle[i] = instance_create_layer(cgvx+(cgvw*(i/10)),y,"Instances",objCoin);
						obstacle[i].owner = id;
					}
					
					break;
}


if (spawnItem = true) {
	spawnItem = false;
	var yAxis = scrMovement(irandom(6));
	switch (irandom(2)) {
		case 0:
			obstacle[j] = instance_create_layer(x,yAxis,"Instances",objCoinBurst);
			obstacle[j].owner = id;
			break;
		case 1:
			obstacle[j] = instance_create_layer(x,yAxis,"Instances",objLifeSpawn);
			obstacle[j].owner = id;
			break;
		case 2:
			obstacle[j] = instance_create_layer(x,yAxis,"Instances",objPlanePickup);
			obstacle[j].owner = id;
			break;
	}
}

j += 1;