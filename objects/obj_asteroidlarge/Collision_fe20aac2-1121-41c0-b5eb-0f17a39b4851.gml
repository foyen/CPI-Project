/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x, y, "Instances", obj_explosion)
asteroid1 = instance_create_layer(x, y, "Instances", obj_asteroidmedium)
asteroid2 = instance_create_layer(x, y, "Instances", obj_asteroidmedium)
asteroid3 = instance_create_layer(x, y, "Instances", obj_asteroidmedium)
asteroid1.velocity_x = irandom_range(-3,3)
asteroid1.velocity_y = irandom_range(-3,3)
asteroid2.velocity_x = irandom_range(-3,3)
asteroid2.velocity_y = irandom_range(-3,3)
asteroid3.velocity_x = irandom_range(-3,3)
asteroid3.velocity_y = irandom_range(-3,3)
instance_destroy()