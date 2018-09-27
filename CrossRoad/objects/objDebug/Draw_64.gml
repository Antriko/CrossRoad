draw_set_font(fntDebug);
draw_set_color(c_white);

draw_text(cgvx+(cgvw*.1), cgvy+(cgvh*.05), "MouseX: " + string(mouse_x));
draw_text(cgvx+(cgvw*.1), cgvy+(cgvh*.075), "MouseY: " + string(mouse_y));
draw_text(cgvx+(cgvw*.1), cgvy+(cgvh*.1), "Position: " + string(objPlayer.position));