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

movement_speed = 0
max_speed = 12 // 90% of player speed
acceleration = 0.9
canfire = false;

velocity_x = 0
velocity_y = 0

speed_x = 0 // speed_x = unit_x * movement_speed
speed_y = 0 // speed_y = unit_y * movement_speed

image_speed = 0


//turn_radius = 20