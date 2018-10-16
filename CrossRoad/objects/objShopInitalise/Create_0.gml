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

planeParts1[0] = objPlane1Part1;
planeParts1[1] = objPlane1Part2;
planeParts1[2] = objPlane1Part3;
planeParts1[3] = objPlane1Part4;

planeParts2[0] = objPlane2Part1;
planeParts2[1] = objPlane2Part2;
planeParts2[2] = objPlane2Part3;
planeParts2[3] = objPlane2Part4;

planeParts3[0] = objPlane3Part1;
planeParts3[1] = objPlane3Part2;
planeParts3[2] = objPlane3Part3;
planeParts3[3] = objPlane3Part4;

planeParts4[0] = objPlane4Part1;
planeParts4[1] = objPlane4Part2;
planeParts4[2] = objPlane4Part3;
planeParts4[3] = objPlane4Part4;

planeParts5[0] = objPlane5Part1;
planeParts5[1] = objPlane5Part2;
planeParts5[2] = objPlane5Part3;
planeParts5[3] = objPlane5Part4;

planeParts6[0] = objPlane6Part1;
planeParts6[1] = objPlane6Part2;
planeParts6[2] = objPlane6Part3;
planeParts6[3] = objPlane6Part4;


shopLen = array_length_1d(shopItem);
planeLen = array_length_1d(planeItem);
powerUps[0] = false;
planes[0] = false;

instance_create_layer(x,y,"Instances",objPowerupSelect);
instance_create_layer(x,y,"Instances",objPlaneSelect);
instance_create_layer(x,y,"Instances",objBack);

scrCamera();
spawn = true;
initiatePowerupShop = true;
initiatePlaneShop = false;

difference = 0;
original_y = y; 
objShopInitalise.selected = 99;