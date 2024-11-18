/// @description Insert description here
// You can write your code in this editor
//shield, shotgun, rapidfire, rail gun
choose_powerup = irandom(3)

switch choose_powerup {
	case 1:
	sprite_index = sPowerup_shield
	break
	
	case 2:
	sprite_index = sPowerup_shotgun
	break
	
	case 3:
	sprite_index = sPowerup_rapidfire
	break
	
	default:
	sprite_index = sPowerup
	break
}