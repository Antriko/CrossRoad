draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fntShopItems);
if (show = "powerups") {
	switch (id_) {
		case 1: draw_text(owner.x + owner.sprite_width/3, owner.y + down, "STOPWATCH"); break;
		case 2: draw_text(owner.x + owner.sprite_width/3, owner.y + down, "SHIELD"); break;
		case 3: draw_text(owner.x + owner.sprite_width/3, owner.y + down, "BOOST"); break;
		case 4: draw_text(owner.x + owner.sprite_width/3, owner.y + down, "BIGGER BOOST"); break;
		case 5: draw_text(owner.x + owner.sprite_width/3, owner.y + down, "MAGNET"); break;
		case 6: draw_text(owner.x + owner.sprite_width/3, owner.y + down, "An item"); break;
	}
}