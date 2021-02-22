function joy_buttons(argument0) {
	// joy_buttons(id)
	//Returns the number of buttons on the joystick.

	return external_call(global.ljoyButtons, argument0);

	//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!




}
