/// @description set_flag(flag,state)
/// @param flag
/// @param state
function set_flag(argument0, argument1) {
	global.flag[argument0] = argument1
	write_line("Flag "+string(argument0)+" has been set to <"+iff(is_string(get_flag(argument0)),get_flag(argument0),string(get_flag(argument0)))+">.")



}
