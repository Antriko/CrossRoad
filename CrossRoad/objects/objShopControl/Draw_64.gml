draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fntShopItems);
var xSplit = 4.5;
depth = 0;
if (show = "powerups") {
	switch (id_) {
		case 1:	draw_text(owner.x + owner.sprite_width/xSplit, owner.y + down, "STOPWATCH"); break;
		case 2: draw_text(owner.x + owner.sprite_width/xSplit, owner.y + down, "SHIELD"); break;
		case 3: draw_text(owner.x + owner.sprite_width/xSplit, owner.y + down, "BOOST"); break;
		case 4: draw_text(owner.x + owner.sprite_width/xSplit, owner.y + down, "BIGGER BOOST"); break;
		case 5: draw_text(owner.x + owner.sprite_width/xSplit, owner.y + down, "MAGNET"); break;
		case 6: draw_text(owner.x + owner.sprite_width/xSplit, owner.y + down, "An item"); break;
	}
	if (objShopInitalise.selected = id_) {
		draw_text(owner.x + owner.sprite_width/xSplit, owner.y + down*3, "OWNED: " + string(objControl.powerups[id_ - 1]));
	}
} else if (show = "planes")  {
	switch (id_) {
		case 1: draw_text(owner.x + owner.sprite_width/xSplit, owner.y + down, "PLANE 1"); break;
		case 2: draw_text(owner.x + owner.sprite_width/xSplit, owner.y + down, "SHIELD"); break;
		case 3: draw_text(owner.x + owner.sprite_width/xSplit, owner.y + down, "BOOST"); break;
		case 4: draw_text(owner.x + owner.sprite_width/xSplit, owner.y + down, "BIGGER BOOST"); break;
		case 5: draw_text(owner.x + owner.sprite_width/xSplit, owner.y + down, "MAGNET"); break;
		case 6: draw_text(owner.x + owner.sprite_width/xSplit, owner.y + down, "An item"); break;
	}
}

if (owner.y + down < 300) {
	image_alpha = 0;	
} else {
	image_alpha = 1;	
}