if (objPlayer.destroy = true) {
	instance_destroy(self);
}

if (alpha = 0) {
	image_alpha -= 0.05;
} else if (alpha = 1) {
	image_alpha += 0.05;
}

if (image_alpha < 0.6 and alpha = 0) {
	alpha = 1;
} else if (image_alpha = 1 and alpha = 1) {
	alpha = 0;
}

y = owner.y;
