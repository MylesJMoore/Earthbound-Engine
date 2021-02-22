/// @description upper(string)
/// @param string
function upper(argument0) {
	var s,c,result;

	s = argument0;

	c = string_char_at(s,0);
	c = string_upper(c);

	s = string_delete(s,1,1);
	result = c+s;

	return result;



}
