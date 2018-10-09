y = owner.y;
x -= objPlayer.xMove;
if (x < -400) or (x > 1480) {
	instance_destroy(objBig1)
	instance_destroy(objBig2)
	instance_destroy(self)
}