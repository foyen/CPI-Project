/// @description Insert description here
// You can write your code in this editor

if (alive = true)
{
	 angle = image_angle mod 360
	
	 if(leftPressed)
	 {
		image_angle += 10 mod 360;
	 }
 
 
 
	 if(rightPressed)
	 {
		image_angle -= 10 mod 360;
	 }
 
	 if(upPressed) 
	 {
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

		velocity_x += (unit_x * movement_speed) / 10
		velocity_y += (unit_y * movement_speed) / 10
	
		var vxy = abs(velocity_x) + abs(velocity_y)
		if (vxy > max_speed)
		{
			velocity_x = velocity_x * (max_speed / vxy)
			velocity_y = velocity_y * (max_speed / vxy)
		}

		if (movement_speed <= max_speed) { movement_speed += 2; }

		x += velocity_x
		y -= velocity_y

	 }
 
	 else
	 {
		 if (movement_speed > 0)
		 {
	
			 var magnitude = sqrt((varx*varx) + (vary* vary))
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
		
			var vxy = abs(velocity_x) + abs(velocity_y)
			if (vxy > max_speed)
			{
				velocity_x = velocity_x * (max_speed / vxy)
				velocity_y = velocity_y * (max_speed / vxy)
				//show_debug_message("WAKE ME UP");
			}
		
			if (velocity_x>0) { velocity_x = min(velocity_x, (unit_x * movement_speed)) }
			if (velocity_y>0) { velocity_y = min(velocity_y, (unit_y * movement_speed)) }
			if (velocity_x<0) { velocity_x = max(velocity_x, (unit_x * movement_speed)) }
			if (velocity_y<0) { velocity_y = max(velocity_y, (unit_y * movement_speed)) }
		
			x += velocity_x
			y -= velocity_y
	 
			movement_speed -= 1
		 }
	 
		 else
		 {
			 movement_speed = 0
			 velocity_x = 0
			 velocity_y = 0
		 }
	 }
 
 
	// Keep the ship within the game's level
	if (x >= room_width - sprite_width) { x = room_width - sprite_width; }
	if (x <= 0 + sprite_width) { x = sprite_width; }
	if (y >= room_height - sprite_height) { y = room_height - sprite_height; }
	if (y <=0 + sprite_height) { y = sprite_height; }
}