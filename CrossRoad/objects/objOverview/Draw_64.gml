draw_set_color(c_black);
draw_set_font(fntOverview);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_text(cgvx+(cgvw*.5), cgvy+(cgvh*.2), "SCORE: " + string(objControl.finalScore));
draw_text(cgvx+(cgvw*.5), cgvy+(cgvh*.25), "COINS: " + string(objControl.CoinsCollected));