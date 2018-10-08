objControl.coins += objControl.CoinsCollected;
ini_open("coins.ini");
ini_write_real(0,0,objControl.coins);

scrCamera();