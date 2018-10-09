
for (i = 0; i < 8; i++) {
	owner.obstacle[i + arLen] = instance_create_layer(x, y, "Instances", objCoin);
	owner.obstacle[i + arLen].owner = id;
	owner.obstacle[i + arLen].alarm[0] = 60;
	owner.obstacle[i + arLen].idThing = i;
	owner.obstacle[i + arLen].coinBurst = true;
}

x = 10000;

//owner.obstacle[owner.j] = instance_create_layer(x, y, "Instances", objCoin);
//owner.obstacle[owner.j].owner = id;
//owner.obstacle[owner.j].alarm[0] = 1;
//alarm[0] = coinRate;
//owner.j += 1;