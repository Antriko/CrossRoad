shopItem[0] = objShop1; 
shopItem[1] = objShop2;
shopItem[2] = objShop3;
shopItem[3] = objShop4;
shopItem[4] = objShop5;
shopItem[5] = objShop6;


powerItem[0] = objPower1;
powerItem[1] = objPower2;
powerItem[2] = objPower3;
powerItem[3] = objPower4;
powerItem[4] = objPower5;
powerItem[5] = objPower6;

planeItem[0] = objPlane1;
planeItem[1] = objPlane2;
planeItem[2] = objPlane3;
planeItem[3] = objPlane4;
planeItem[4] = objPlane5;
planeItem[5] = objPlane6;

shopLen = array_length_1d(shopItem);
planeLen = array_length_1d(planeItem);
powerUps[0] = false;
planes[0] = false;

instance_create_layer(x,y,"Instances",objPowerupSelect);
instance_create_layer(x,y,"Instances",objPlaneSelect);

scrCamera();
spawn = true;
initiatePowerupShop = true;
initiatePlaneShop = false;

difference = 0;
original_y = y; 
objShopInitalise.selected = 99;