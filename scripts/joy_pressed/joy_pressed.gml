function joy_pressed(argument0, argument1) {
	// joy_pressed(id, button)
	//Returns true if the given button (starting at 0) was pressed this step.
	//  (NOTE: if joy_update is called more than once per step this can fail)

	return external_call(global.ljoyPressed, argument0, argument1);

	//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!




}
