/// @description Insert description here
// You can write your code in this editor
switch choose_powerup {
	case 1:
	oPlayer2.has_shield = true
	break
	
	case 2:
	oPlayer2.has_shotgun = true
	oPlayer2.has_rapidfire = false
	oPlayer2.has_railgun = false
	break
	
	case 3:
	oPlayer2.has_rapidfire = true
	oPlayer2.has_railgun = false
	oPlayer2.has_shotgun = false
	break
	
	default:
	oPlayer2.has_railgun = true
	oPlayer2.has_rapidfire = false
	oPlayer2.has_shotgun = false
	break
}

var spawn = instance_place(x, y, oPowerup_spawn)

if spawn != noone {
	spawn.has_powerup = false;
}

audio_play_sound(pickupCoin, 1, false)

instance_destroy()