i = 0;

scrCamera();
objInitialiseSpawner.childList[scrFindFirstID()].y = cgvy+(cgvh*(beginingPosition+(dist*(arLen-1))));

dist = objInitialiseSpawner.dist;
beginingPosition = objInitialiseSpawner.beginingPosition;
arLen = array_length_1d(objInitialiseSpawner.position);

for(i = 0; i < arLen; i++){
	if (objInitialiseSpawner.position[i] = beginingPosition){
	objInitialiseSpawner.position[i] = beginingPosition+(dist*(arLen-1));
	} else {
	objInitialiseSpawner.position[i] -= dist;
	}
}

