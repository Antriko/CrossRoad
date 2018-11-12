arrayi = 0;
i = 0;

dist = objControl.dist;
beginingPosition = objControl.beginingPosition;;
arLen = array_length_1d(objInitialiseSpawner.position);

for(i = 0; i < arLen; i++){
	if (objInitialiseSpawner.position[i] = beginingPosition+(dist*(arLen-1))){	//last number in the distance
	objInitialiseSpawner.position[i] = beginingPosition;						//goes back to the start
	} else {
	objInitialiseSpawner.position[i] += dist;
	}
}

objInitialiseSpawner.childList[scrFindID()].y = cgvy+(cgvh*(beginingPosition));