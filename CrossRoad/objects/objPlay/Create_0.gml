scrCamera();
scale = 2;
image_xscale = scale;
image_yscale = scale;

x = cgvx+(cgvw*.5);
y = cgvy+(cgvh*.45);


instance_create_layer(x,y,"Instances",objTitle);
instance_create_layer(x,y,"Instances",objShop);
instance_create_layer(x,y,"Instances",objSettings);