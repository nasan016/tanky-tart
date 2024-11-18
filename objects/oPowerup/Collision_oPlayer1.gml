/// @description Insert description here
// You can write your code in this editor
switch choose_powerup {
	case 1:
	oPlayer1.has_shield = true
	break
	
	case 2:
	oPlayer1.has_shotgun = true
	oPlayer1.has_rapidfire = false
	oPlayer1.has_railgun = false
	break
	
	case 3:
	oPlayer1.has_rapidfire = true
	oPlayer1.has_railgun = false
	oPlayer1.has_shotgun = false
	break
	
	default:
	oPlayer1.has_railgun = true
	oPlayer1.has_rapidfire = false
	oPlayer1.has_shotgun = false
	break
}

var spawn = instance_place(x, y, oPowerup_spawn)

if spawn != noone {
	spawn.has_powerup = false;
}

audio_play_sound(pickupCoin, 1, false)

instance_destroy()