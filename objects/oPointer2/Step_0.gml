/// @description Insert description here
// You can write your code in this editor
x = oPlayer2.x
y = oPlayer2.y

// Get right stick input
var right_x = gamepad_axis_value(1, gp_axisrh); // Right stick horizontal
var right_y = gamepad_axis_value(1, gp_axisrv); // Right stick vertical

// Apply deadzone to avoid unintended rotation
if (abs(right_x) > 0.2 || abs(right_y) > 0.2) {
    // Calculate the angle based on right stick input
    image_angle = point_direction(0, 0, right_x, right_y);
}