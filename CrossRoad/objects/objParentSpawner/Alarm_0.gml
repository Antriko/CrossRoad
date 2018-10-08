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
						randomNum[i] = irandom(8);
						obstacle[i] = instance_create_layer(cgvx+(cgvw*((randomNum[i]+1)/10)),y,"Instances",objCloud);
						obstacle[i].owner = id;
					}
					break;
}

j += 1;