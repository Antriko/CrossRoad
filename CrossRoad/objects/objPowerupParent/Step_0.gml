//Powerups
if (id_ > objShopInitalise.selected and id_ != 7) {
	y = lerp(y, startY+(id_*(height+(height/4)))+objShopInitalise.difference+height,lerpSpeed);
} else {
	y = lerp(y, startY+(id_*(height+(height/4)))+objShopInitalise.difference,lerpSpeed);
}

if (id_ = objShopInitalise.selected and id_ < 7) {
	scale = lerp(scale, startingScale*2, lerpSpeed)

} else {
	scale = lerp(scale, startingScale, lerpSpeed);	
}

image_yscale = scale;

if (createItems = true) {
	createItems = false;
	item = instance_create_layer(x,y, "Instances", objShopInitalise.powerItem[id_ - 1]);
	item.owner = id;
}

x = lerp(x, xpos, .2);