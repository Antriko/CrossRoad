if (spawn = true) {
	spawn = false;
	for (i = 0; i < 4; i++) {
		switch (id_) {
			case 1:
				planePart[i] = instance_create_layer(x,y,"Instances",objShopInitalise.planeParts1[i])
				break;
			case 2:
				planePart[i] = instance_create_layer(x,y,"Instances",objShopInitalise.planeParts2[i])
				break;
			case 3:
				planePart[i] = instance_create_layer(x,y,"Instances",objShopInitalise.planeParts3[i])
				break;
			case 4:
				planePart[i] = instance_create_layer(x,y,"Instances",objShopInitalise.planeParts4[i])
				break;
			case 5:
				planePart[i] = instance_create_layer(x,y,"Instances",objShopInitalise.planeParts5[i])
				break;
			case 6:
				planePart[i] = instance_create_layer(x,y,"Instances",objShopInitalise.planeParts6[i])
				break;
		}
		planePart[i].id_ = i;
		planePart[i].owner = id;
		planePart[i].depth = -1;
	}
}

if (id_ > objShopInitalise.selected) {
	y = lerp(y, startY+(id_*(height+(height/4)))+objShopInitalise.difference+height,lerpSpeed);
} else {
	y = lerp(y, startY+(id_*(height+(height/4)))+objShopInitalise.difference,lerpSpeed);
}

if (id_ = objShopInitalise.selected) {
	scale = lerp(scale, startingScale*2, lerpSpeed)
} else {
	scale = lerp(scale, startingScale, lerpSpeed);	
}

image_yscale = scale;

x = lerp(x, xpos, .2);

if (createItems = true) {
	createItems = false;
	item = instance_create_layer(x,y, "Instances", objShopInitalise.planeItem[id_ - 1]);
	item.owner = id;
}