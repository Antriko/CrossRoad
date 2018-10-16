objControl.coins += objControl.CoinsCollected;
ini_open("saveData.ini");
ini_write_real(0,0,objControl.coins);

if (objControl.finalScore > objControl.highscore) {
	objControl.highscore = objControl.finalScore
	ini_write_real(0,1,objControl.highscore);
}

for (i = 10; i < 17; i++) {
	for (j = 0; j < 4; j++)	{
		ini_write_real(i,j,objControl.collection[i-10,j]);	
	}
}
show_debug_message(objControl.collection)
ini_close();
scrCamera();