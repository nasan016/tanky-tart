/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < 4; i++) { // Check up to 4 gamepads
    if (gamepad_is_connected(i) && gamepad_button_check_pressed(i, gp_start)) {
        room_goto_next();
		audio_play_sound(blipSelect, 1, false)
    }
}