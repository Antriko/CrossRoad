/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_center);

if (id_ != 0 and debug = true)
{
	draw_self();
	draw_text(x,y, string(spawnHere)); 
	draw_text(x,y+50, string(id_));
	image_alpha = 0;
} else {
	image_alpha = 1;	
}