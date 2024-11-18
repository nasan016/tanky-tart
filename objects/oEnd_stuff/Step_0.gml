/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < 4; i++) { //checks up to 4 but like there's only 2 but i dont wanna break things again
    if (gamepad_is_connected(i) && gamepad_button_check_pressed(i, gp_start)) {
        
		global.player1_score = 0
		global.player2_score = 0
		global.previous_winner = -1
		global.winner = -1
		
		room_goto(rMenu); 
		
		audio_play_sound(blipSelect, 1, false)
    }
}