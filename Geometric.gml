#region Circle()
/// @description				This function causes circular motion around a centerpoint. 
/// @description				Returns x & y coordinates.
/// @param center_x				The x-coordinate of the center of the circle
/// @param center_y				The y_coordinate of the center of the circle
/// @param radius				The radius of the desired circle
/// @param duration				The duration, in seconds, of each full rotation.
/// @param {real} rot_dir		The direction of rotation, clockwise by default (-1 for CCW). 

function Circle(center_x, center_y, radius, duration, rot_dir=1){
	
	// X & Y Coordinate can be parametrized as 
	// x = center_x + (radius * cos(angle)
	// y = center_y + (radius * sin(angle)
	//(dcos & dsin should be used when angle is in degrees)

	//Check to see if radius and duration are valid values
	if radius < 0 || duration <= 0
	{
		return [center_x, center_y]
	}
	
	//Find the angle as a fraction of 360 based on the time the game has been running
	var angle = ((current_time * .001) / duration)*360
	
	//Handle rotation direction
	if rot_dir == -1
	{
		angle = -angle
	}
	
	//Find the x and y components
	var _x = center_x + (radius * dcos(angle))
	var _y = center_y + (radius * dsin(angle))
	
	//Return the values as a matrix
	return [_x, _y]

}
#endregion

#region Wave()
///@description			This function returns a value that will oscillate smoothly between two values over a given time.
///@param from			The lower value of the oscillation
///@param to			The upper value of the oscillation
///@param duration		The time, in seconds, of one full oscillation
///@param offset		The percentage shift of the oscillation expressed as a decimal between zero and one.

function Wave(from, to, duration, offset){
	//Wave(from, to, duration, offset)
 
	// Returns a value that will wave back and forth between [from-to] over [duration] seconds
	// Examples
	//      image_angle = Wave(-45,45,1,0)  -> rock back and forth 90 degrees in a second
	//      x = Wave(-10,10,0.25,0)         -> move left and right quickly
 
	// Or here is a fun one! Make an object be all squishy!! ^u^
	//      image_xscale = Wave(0.5, 2.0, 1.0, 0.0)
	//      image_yscale = Wave(2.0, 0.5, 1.0, 0.0)

	var center = (to - from) * 0.5;
	return from + center + dsin((((current_time * 0.001) + duration * offset) / duration) * (360)) * center;

}
#endregion
