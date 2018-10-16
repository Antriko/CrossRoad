arrayi = 0;
i = 0;

dist = objControl.dist;
beginingPosition = objControl.beginingPosition;;
arLen = array_length_1d(objInitialiseSpawner.position);

for(i = 0; i < arLen; i++){
	if (objInitialiseSpawner.position[i] = beginingPosition+(dist*(arLen-1))){
	objInitialiseSpawner.position[i] = beginingPosition;
	} else {
	objInitialiseSpawner.position[i] += dist;
	}
}

objInitialiseSpawner.childList[scrFindID()].y = cgvy+(cgvh*(beginingPosition));