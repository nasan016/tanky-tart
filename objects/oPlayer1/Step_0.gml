/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if global.previous_winner = 1 && !oHUD.flag {
	has_shield = true
	shield_timer = 750
	global.previous_winner = -1
}
var right_x = gamepad_axis_value(pad_id, gp_axislh); // Right stick horizontal
var right_y = gamepad_axis_value(pad_id, gp_axislv); // Right stick vertical

// Apply deadzone to avoid unintended rotation
if (abs(right_x) > 0.2 || abs(right_y) > 0.2) {
    // Calculate the angle based on right stick input
    image_angle = point_direction(0, 0, right_x, right_y);
}

if (gamepad_button_check_pressed(pad_id, gp_shoulderr) && cd <= 0) {
	
	cd = cd_val
	
	var barrel_length = 28
	
	var bullet_x = x + lengthdir_x(barrel_length, oPointer1.image_angle)
	var bullet_y = y + lengthdir_y(barrel_length, oPointer1.image_angle)


	if has_shotgun && shot_count >= 0 {
		with (instance_create_layer(bullet_x, bullet_y, "bullets", oBullet)) {
			direction = oPointer1.image_angle + 5
			speed = 5
			num_bounce = 2
			if oPlayer1.rage_mode {
				damage = 20
			}
		}
		
		with (instance_create_layer(bullet_x, bullet_y, "bullets", oBullet)) {
			direction = oPointer1.image_angle - 5
			speed = 5
			num_bounce = 2
			if oPlayer1.rage_mode {
				damage = 20
			}
		}
		
		with (instance_create_layer(bullet_x, bullet_y, "bullets", oBullet)) {
			direction = oPointer1.image_angle + 3
			speed = 5
			num_bounce = 2
			if oPlayer1.rage_mode {
				damage = 20
			}
		}
		
		with (instance_create_layer(bullet_x, bullet_y, "bullets", oBullet)) {
			direction = oPointer1.image_angle - 3
			speed = 5
			num_bounce = 2
			if oPlayer1.rage_mode {
				damage = 20
			}
		}
		
		shot_count --
		
		if shot_count <= 0 {
			shot_count = 3
			has_shotgun = false
		}
	} else if has_railgun {
		with (instance_create_layer(bullet_x, bullet_y, "bullets", oBullet)) {
			direction = oPointer1.image_angle
			speed = 20
			num_bounce = 8
			damage = 40
		}
		
		has_railgun = false
	} else {
		with (instance_create_layer(bullet_x, bullet_y, "bullets", oBullet)) {
			direction = oPointer1.image_angle
			speed = 5
		
			if oPlayer1.rage_mode {
				damage = 20
			}
		}
	}
	
	audio_play_sound(laserShoot, 1, false)
}

if has_shield && shield_timer >= 0 {
	oShield1.is_active = true
	shield_timer --
} else {
	has_shield = false
	shield_timer = 300
	oShield1.is_active = false
}

oShield1.x = x
oShield1.y = y