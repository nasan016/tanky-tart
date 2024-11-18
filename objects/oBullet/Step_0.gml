if num_bounce <= 0 {
	instance_destroy()
}

active_counter += 1

if active_counter > 8 {
	is_active = true
}

if is_active {
	if(place_meeting(x, y, oPlayer1)) {
		oPlayer1.hit_points -= damage
		instance_destroy()
		audio_play_sound(hitHurt, 1, false)
	}
	
	if(place_meeting(x, y, oPlayer2)) {
		oPlayer2.hit_points -= damage
		instance_destroy()
		audio_play_sound(hitHurt, 1, false)
	}
}

if is_active && oShield1.is_active {
	if(place_meeting(x, y, oShield1)) {
		instance_destroy()
	}
}

if is_active && oShield2.is_active {
	if(place_meeting(x, y, oShield2)) {
		instance_destroy()
	}
}