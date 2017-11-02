/// @description Insert description here
// You can write your code in this editor

angle = image_angle mod 360
 
if( abs(point_distance(x, y, object0.x, object0.y)) < 800 )  // near player
{ 
	
	moving_to_loc = false;
	
	if (!canfire)
	{
		canfire = true;
		alarm[0] = irandom_range(3,5)*room_speed
	}
	
	//move_towards_point(x, y, 0) 
	Calc_img_angle( object0.x , object0.y, self)
	angle = image_angle mod 360
		
	varx =   dcos(angle);
	vary =   dsin(angle);

	if(angle < 0 ) 
	{
		angle += 360
	}
	
	// show_message(string(angle));
	var magnitude = sqrt((varx*varx) + (vary*vary))

	if(magnitude > 0)
	{
		//calculate the unit vector
		unit_x = varx / magnitude
		unit_y = vary / magnitude
	}

	else
	{
		//avoid divide by 0
		unit_x = 0
		unit_y = 0
	}

	// For some reason, the enemies move right faster than they move left.
	// This code is basically a duct tape solution until I figure out the actual cause of it.
	/*
	if (velocity_x > 0 && velocity_y < 0) 
	{ 
		//show_debug_message("southeast")
		max_speed = 22;
		acceleration = 1.5
		if (movement_speed > max_speed) { movement_speed = max_speed }
	}
	
	if (velocity_x > 0 && velocity_y > 0) 
	{ 
		//show_debug_message("northeast")
		max_speed = 27;
		acceleration = 1.8
		if (movement_speed > max_speed) { movement_speed = max_speed }
	}
	
	if (velocity_x < 0 && velocity_y < 0) 
	{ 
		//show_debug_message("southwest")
		max_speed = 27;
		acceleration = 1.8
		if (movement_speed > max_speed) { movement_speed = max_speed }
	}
	
	if (velocity_x < 0 && velocity_y > 0) 
	{ 
		//show_debug_message("northwest")
		max_speed = 32;
		acceleration = 2.2
		if (movement_speed > max_speed) { movement_speed = max_speed }
	}*/
	
	velocity_x += (unit_x * movement_speed) / 10
	velocity_y += (unit_y * movement_speed) / 10
	
	// This prevents enemies from moving faster diagonally.
	var vxy = abs(velocity_x) + abs(velocity_y)
	if (vxy > max_speed)
	{
		velocity_x = velocity_x * (max_speed / vxy)
		velocity_y = velocity_y * (max_speed / vxy)
	}

	if (movement_speed <= max_speed) { movement_speed += acceleration; }

	x += velocity_x
	y -= velocity_y
}

else if(abs(point_distance(x, y, Moving_to_location_x, Moving_to_location_y))< 10)
{	// at target location
	Moving_to_location_x = irandom_range(0, room_width );
	Moving_to_location_y = irandom_range(0, room_height);
	move_towards_point(Moving_to_location_x, Moving_to_location_y, 5)
	moving_to_loc = true
	Calc_img_angle(Moving_to_location_x, Moving_to_location_y, self)
	can_fire = false;
}

else
{
	if(!moving_to_loc)
	{
		//out of range of player	
		angle = image_angle mod 360
		if(angle < 0 ) 
		{
			angle += 360
		}
	
		varx =   dcos(angle);
		vary =   dsin(angle);

		move_towards_point(x + varx, (y+ -vary), 5)	
		Calc_img_angle(x + varx, (y+ (-vary)), self)  // continue forward
		alarm[3] = room_speed * 3; // Go back
	
		moving_to_loc = true;
	
	}
}


if(can_fire)
{
	//Weapon code here

}

// if it reaches the edge of the screen, turn around.
if (x > room_width)
{
	x = room_width
	velocity_x *= -1
}

if (x < 0)
{
	x = 0
	velocity_x *= -1
}

if (y > room_height)
{
	y = room_height
	velocity_y *= -1
}

if (y < 0)
{
	y = 0
	velocity_y *= -1
}