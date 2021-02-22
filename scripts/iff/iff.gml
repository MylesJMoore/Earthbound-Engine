/// @description iff(condition,true,false)
/// @param condition
/// @param true
/// @param false
function iff(argument0, argument1, argument2) {
	// Ternary operator 
	// iff(arg0,arg1,arg2) is the same as C's arg0? arg1 : arg2

	if (argument0) {
	    return argument1;
	} else {
	    return argument2;
	}



}
