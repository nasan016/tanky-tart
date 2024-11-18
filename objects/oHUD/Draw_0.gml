/// @description Insert description here
// You can write your code in this editor

if count != -1 {
	draw_set_color(c_black)
	draw_set_font(fCount)
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	if count != 0 {
		draw_text(room_width / 2, room_height / 2, string(count));
	}
	if count == 0 {
		draw_text(room_width / 2, room_height / 2, "GO!")
	}
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
	
draw_set_font(fUI)
draw_set_color(c_red)
draw_text(28, 685, "Player 1")

draw_set_color(c_blue)
draw_text(1192, 685, "Player 2")

draw_set_color(c_black)
draw_text(1192, 730, "HP: " + string(oPlayer2.hit_points))
draw_text(28, 730, "HP: " + string(oPlayer1.hit_points))

draw_text(630, 730, string(global.player1_score) + "-" + string(global.player2_score))

if flag {
	draw_set_color(c_black)
	draw_set_font(fCount)
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	

	draw_text(room_width / 2, room_height / 2, "Player " + string(global.previous_winner) + " Wins!");
}