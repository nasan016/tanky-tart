/// @description Insert description here
// You can write your code in this editor
count_down -= 1

if count_down <= 120 && count_down >= 60 {

	count = 2
} else if count_down <= 60 && count_down >= 0 {

	count = 1
} else if count_down <= 0 {
	if !sound_played {
		audio_play_sound(click, 1, false)
		sound_played = true
	}
	count = 0
}

if count_down <= -60 {
	count = -1
}

if count_down == -1 {
	game_active = true
}

if oPlayer1.hit_points <= 0 && !flag {
	game_active = false
	
	if global.player2_score == 1 {
		global.player2_score = 2
	}
	
	if global.player2_score == 2 {
		global.winner = 2
		room_goto(rEnd)
	}
	
	if global.player2_score == 0 {
		global.player2_score = 1
	}
	
	global.previous_winner = 2
	
	flag = true
}

if oPlayer2.hit_points <= 0 && !flag {
	game_active = false

	if global.player1_score == 1 {
		global.player1_score = 2
	}
	
	if global.player1_score == 2 {
		global.winner = 1
		room_goto(rEnd)
	}
	
	if global.player1_score == 0 {
		global.player1_score = 1
	}
	
	global.previous_winner = 1
	
	flag = true
}

if flag == true {
	end_count -= 1
}

if end_count <= 0 {
	room_goto_next()
}