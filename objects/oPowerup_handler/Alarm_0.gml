/// @description Insert description here
// You can write your code in this editor
show_debug_message("HELLO")

if (instance_number(oPowerup_spawn) > 0) {
	var spawn = instance_find(oPowerup_spawn, irandom(instance_number(oPowerup_spawn) - 1))
	
	if !spawn.has_powerup {
		instance_create_layer(spawn.x, spawn.y, "powerup", oPowerup)
		spawn.has_powerup = true
	}
}
alarm[0] = 300