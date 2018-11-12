scrCamera();
scale = 1;
image_xscale = scale;
image_yscale = scale;

x = cgvx+(cgvw*.5);
y = cgvy+(cgvh*.5);

instance_create_layer(0,0,"Instances",objGoBack);
instance_create_layer(0,0,"Instances",objOptionTitle);
instance_create_layer(0,0,"Instances",objOptionMusic);
instance_create_layer(0,0,"Instances",objGooglePlay);
instance_create_layer(0,0,"Instances",objFacebook);
instance_create_layer(0,0,"Instances",objCredits);
instance_create_layer(0,0,"Instances",objLeaderboard);
instance_create_layer(0,0,"Instances",objRate);