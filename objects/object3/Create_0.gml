/// @description Insert description here
// You can write your code in this editor

image_xscale = .5
image_yscale = .5

can_fire = false;
moving_to_loc = true;

Moving_to_location_x = irandom_range(0+50,room_width-50 );
Moving_to_location_y = irandom_range(0 +50, room_height -50);

Calc_img_angle(Moving_to_location_x, Moving_to_location_y, self)

move_towards_point(Moving_to_location_x, Moving_to_location_y, 5)

movement_speed = 5

image_speed = 0


//turn_radius = 20