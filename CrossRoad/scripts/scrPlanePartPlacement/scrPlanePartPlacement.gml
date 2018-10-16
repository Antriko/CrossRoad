y = (owner.y + owner.height) + (sprite_height + (sprite_height*1.2));
switch (id_) {
	case 0:
		if (owner.id_ = objShopInitalise.selected) {
			x = owner.x - sprite_width*3;
		} else {
			x = 5000;	
		}	
		break;
	case 1:
		if (owner.id_ = objShopInitalise.selected) {
			x = owner.x - sprite_width;
		} else {
			x = 5000;	
		}
		break;
	case 2:
		if (owner.id_ = objShopInitalise.selected) {
			x = owner.x + sprite_width;
		} else {
			x = 5000;	
		}
		break;
	case 3:
		if (owner.id_ = objShopInitalise.selected) {
			x = owner.x + sprite_width*3;
		} else {
			x = 5000;	
		}
		break;
}

if (owner.id_ = objShopInitalise.selected) {
	image_alpha += 0.05;	
} else {
	image_alpha = 0;	
}