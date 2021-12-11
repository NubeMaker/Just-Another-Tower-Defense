if (keyboard_check_pressed(vk_anykey)) {
	if (myInstructions.visible == true) {
		room_goto(MainRoom);
	}
}