owner.obstacle[owner.j] = instance_create_layer(x, y, "Instances", objCoin);
owner.obstacle[owner.j].owner = id;
alarm[0] = coinRate;
owner.j += 1;