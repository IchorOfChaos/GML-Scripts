//This code is for pixel perfect motion. Allows an object to scoot smoothly up to a wall, solid surface, boundary, etc. 

var _subPixel = .5;
    // This is for horizontal motion. Assume movement speed "x_speed", check if there is a solid "x_speed" pixels away from object
	if place_meeting(x + x_speed, y, o_paddle_parent)
		{
			// If there is, step over half a pixel until you're directly up against another pixel
			// thereby scooting into the corner precisely
			var _pixelCheck = _subPixel * sign(x_speed);
			while !place_meeting(x + _pixelCheck, y, o_paddle_parent)
			{
				// Add the value of pixel check to x position
				x += _pixelCheck;
			}
        	}
