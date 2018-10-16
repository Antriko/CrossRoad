scrCamera();

x = cgvx+(cgvw*.5);

image_xscale = 4;
image_yscale = 4;

instance_create_layer(0,0,"Instances",objLeft);
instance_create_layer(0,0,"Instances",objRight);


angleFlicked = 0;
position = 4;

goDown = 3;
movedUp = 1;

touched = 0;
coin = 0;

shake = false;
shakeTime = 30;
shakeScale = 4;

xMove = 0;
destroy = false;

yPos = objControl.beginingPosition + (8*objControl.dist)
y = cgvy+(cgvh*yPos);