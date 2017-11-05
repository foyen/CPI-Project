/// @description Insert description here
// You can write your code in this editor
movement_speed = 0
max_speed = 15
max_diag_speed = 15*1.2
acceleration = 1

image_speed = 0
image_xscale = .025
image_yscale = .025

velocity_x = 0
velocity_y = 0
x_speed = 0 // unit_x * movement_speed
y_speed = 0 // unit_y * movement_speed

leftPressed = false
rightPressed = false
upPressed = false

angle = 0
unit_x = 0
unit_y = 0

alive = true // player starts alive
reloaded = true
invincible = false // Player is invincible for 3 seconds after they die
invincible_step_count = 0 // This is for the blinking effect when the player is invincible

bomb_set = false // Prevents you from using multiple smart bombs when the button is held down.

vxy = 0 // velocity_x + velocity_y
speed_cut = max_speed / vxy // Cuts the speed by max_speed / vxy to cap diagonal speed.

astronaut_count = 0