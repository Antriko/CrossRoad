ini_open("saveData.ini");
//general
coins = ini_read_real(0,0,0);
highscore = ini_read_real(0,1,0);

//purchases
for (k = 0; k < 6; k++) {
	powerups[k] = ini_read_real(1,k,0);	
}

//plane collection
for (i = 10; i < 17; i++) {
	for (j = 0; j < 4; j++)	{
		collection[i-10,j] = ini_read_real(i,j,0);	
	}
}
ini_close();