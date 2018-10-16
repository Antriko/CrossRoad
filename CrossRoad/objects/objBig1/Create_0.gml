image_xscale = 4;
image_yscale = 4;
scrCamera();
x = objBig3.x;

if (objBig3.spawnArea = "left") {
	alert = instance_create_layer(cgvx+(cgvw*.15),y,"Instances",objIndication);
	alert.owner = id;
} else if (objBig3.spawnArea = "right") {
	alert = instance_create_layer(cgvx+(cgvw*.85),y,"Instances",objIndication);
	alert.owner = id;
}