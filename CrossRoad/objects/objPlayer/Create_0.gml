scrCamera();

x = cgvx+(cgvw*.5);
y = cgvy+(cgvh*.85);

image_xscale = 4;
image_yscale = 4;

instance_create_layer(0,0,"Instances",objLeft);
instance_create_layer(0,0,"Instances",objRight);


angleFlicked = 0;
position = 5;

goDown = 3;
movedUp = 0;

touched = 0;
coin = 0;