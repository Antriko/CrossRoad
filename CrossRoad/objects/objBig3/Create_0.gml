switch (irandom(1)) {
	case 0:	x = -256; spawnArea = "left"; alarm[0] = 240; break;
	case 1: x = 1336; spawnArea = "right"; alarm[1] = 240; break;
}
alarm[2] = 360;
image_xscale = 4;
image_yscale = 4;
scrCamera();
objPlayer.xMove = 0;
alarm[0] = 240;
destroy = false;

if (spawnArea = "left") {
	alert = instance_create_layer(cgvx+(cgvw*.15),y,"Instances",objIndication);
	alert.owner = id;
} else if (spawnArea = "right") {
	alert = instance_create_layer(cgvx+(cgvw*.85),y,"Instances",objIndication);
	alert.owner = id;
}