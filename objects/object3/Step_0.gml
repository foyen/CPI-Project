/// @description Insert description here
// You can write your code in this editor

if( abs(point_distance(x, y, object0.x, object0.y)) < 300 )  // near player
{ 
	
	moving_to_loc = false;
	canfire = true;
	
	
	if(abs (point_distance(x,y, object0.x , object0.y)) < 275) // too close
	{	
		move_towards_point(x, y, 0) 
		Calc_img_angle( object0.x , object0.y, self)
	}
	
	else
	{
		
		move_towards_point(object0.x, object0.y, 5)
		Calc_img_angle(object0.x, object0.y, self)
	}
	
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
else{
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
