/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x, y, "Instances", obj_smartbomb)
show_debug_message("Smartbomb")
alarm[4] = 0.3 * room_speed
show_debug_message("alarm 4 set")