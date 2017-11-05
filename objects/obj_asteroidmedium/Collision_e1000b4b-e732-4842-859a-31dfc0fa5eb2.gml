/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x, y, "Instances", obj_explosion)
asteroid1 = instance_create_layer(x, y, "Instances", obj_asteroidsmall)
asteroid2 = instance_create_layer(x, y, "Instances", obj_asteroidsmall)
asteroid3 = instance_create_layer(x, y, "Instances", obj_asteroidsmall)
asteroid1.velocity_x = irandom_range(-6,6)
asteroid1.velocity_y = irandom_range(-6,6)
asteroid2.velocity_x = irandom_range(-6,6)
asteroid2.velocity_y = irandom_range(-6,6)
asteroid3.velocity_x = irandom_range(-6,6)
asteroid3.velocity_y = irandom_range(-6,6)
instance_destroy()