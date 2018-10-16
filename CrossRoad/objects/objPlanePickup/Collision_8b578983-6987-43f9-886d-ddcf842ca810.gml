var first = irandom(5);
var second = irandom(3);

if (objControl.collection[first, second] = 1) {
	var first = irandom(5);
	var second = irandom(3);
} else {
	objControl.collection[first, second] = 1;
	instance_destroy(self);
}