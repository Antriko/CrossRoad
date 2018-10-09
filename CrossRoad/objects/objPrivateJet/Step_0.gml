y = owner.y;
x -= owner.move;
if (x < -400) or (x > 1480) {
	owner.move = 0;
	coinRate = 0;
}