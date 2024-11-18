/// @description Insert description here
// You can write your code in this editor
if hit_points <= 0 {
	hit_points = 0
}

if (!oHUD.game_active) {
	return
}

var move_x = gamepad_axis_value(pad_id, gp_axislh)
var move_y = gamepad_axis_value(pad_id, gp_axislv)

if (abs(move_x) < .2) move_x = 0
if (abs(move_y) < .2) move_y = 0

if (!place_meeting(x + move_x * mvspeed, y, oWall)) {
	x += move_x * mvspeed
}

if (!place_meeting(x, y + move_y * mvspeed, oWall)) {
	y += move_y * mvspeed
}

if hit_points <= 40 {
	rage_mode = true
}

if rage_mode {
	mvspeed = 3.7
}

if rapidfire_timer >= 0 && has_rapidfire {
	cd_val = 5
	rapidfire_timer --
} else {
	cd_val = 30
	rapidfire_timer = 300
	has_rapidfire = false
}

cd--