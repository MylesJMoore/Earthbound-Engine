function joy_hat_y(argument0, argument1) {
	// joy_hat_y(id, hat)  [or joy_hat_y(id) for hat 0]
	//Returns the hat's vertical position as -1 (up), 0 (center) or 1 (down).

	return external_call(global.ljoyHatY, argument0, argument1);

	//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!




}
