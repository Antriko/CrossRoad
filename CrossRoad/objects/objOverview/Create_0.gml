objControl.coins += objControl.CoinsCollected;
ini_open("saveData.ini");
ini_write_real(0,0,objControl.coins);

if (objControl.finalScore > objControl.highscore) {
	objControl.highscore = objControl.finalScore
	ini_write_real(0,1,objControl.highscore);
}

ini_close();
scrCamera();