if(!instance_exists(global.player)) {
	if(keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) {
		room_restart();
	}
}