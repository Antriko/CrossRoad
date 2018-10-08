draw_set_font(fntDebug);
draw_set_color(c_white);

draw_set_halign(fa_center);
draw_set_valign(fa_center);

if (room = roomPlay) {
draw_text(cgvx+(cgvw*.8), cgvy+(cgvh*.1), "Down: " + string(objPlayer.goDown));
draw_text(cgvx+(cgvw*.8), cgvy+(cgvh*.115), "Score: " + string(objPlayer.movedUp));
draw_text(cgvx+(cgvw*.8), cgvy+(cgvh*.13), "Collision: " + string(objPlayer.touched));
draw_text(cgvx+(cgvw*.8), cgvy+(cgvh*.145), "Coins: " + string(objPlayer.coin));
}