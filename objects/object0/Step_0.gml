/// @description Insert description here
// You can write your code in this editor

if (alive = true)
{
	 angle = image_angle mod 360
	
	 if(leftPressed)
	 {
		image_angle += 5 mod 360;
	 }
 
 
 
	 if(rightPressed)
	 {
		image_angle -= 5 mod 360;
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

		speed_x = unit_x * movement_speed
		speed_y = unit_y * movement_speed
		
		velocity_x += (speed_x) / 20
		velocity_y += (speed_y) / 20
	
		var vxy = abs(velocity_x) + abs(velocity_y)
		if (vxy > max_diag_speed)
		{
			velocity_x = velocity_x * (max_diag_speed / vxy)
			velocity_y = velocity_y * (max_diag_speed / vxy)
		}

		if (movement_speed <= max_speed) { movement_speed += acceleration; }

		x += velocity_x
		y -= velocity_y

	 }
 
	 else
	 {
		 if (movement_speed > 0)
		 {
	    	 if(angle < 0 ) 
			 {
				angle += 360
			 }
	
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
		
			speed_x = unit_x * movement_speed
			speed_y = unit_y * movement_speed
			
			var vxy = abs(velocity_x) + abs(velocity_y)
			if (vxy > max_diag_speed)
			{
				velocity_x = velocity_x * (max_diag_speed / vxy)
				velocity_y = velocity_y * (max_diag_speed / vxy)
			}
		
			if (velocity_x>0) { velocity_x = min(velocity_x, (speed_x)) }
			if (velocity_y>0) { velocity_y = min(velocity_y, (speed_y)) }
			if (velocity_x<0) { velocity_x = max(velocity_x, (speed_x)) }
			if (velocity_y<0) { velocity_y = max(velocity_y, (speed_y)) }
		
			x += velocity_x
			y -= velocity_y
	 
			movement_speed -= 0.3
		 }
	 
		 else
		 {
			 movement_speed = 0
			 velocity_x = 0
			 velocity_y = 0
		 }
	 }
 
 
	// Keep the ship within the game's level
	if (x > room_width - sprite_width) { x = sprite_width }
	if (x < 0 + sprite_width) { x = room_width - sprite_width; }
	if (y > room_height - sprite_height) { y = sprite_height; }
	if (y < 0 + sprite_height) { y = room_height - sprite_height; }
	
	// If ship is invincible, have it blink
	if (alarm[5] > 0) { invincible_step_count++ }
	
	if (invincible_step_count > 2)
	{
		invincible_step_count = 0
		if (invincible = true && visible = true) { visible = false }
		else if (invincible = true && visible = false) { visible = true }
	}
}