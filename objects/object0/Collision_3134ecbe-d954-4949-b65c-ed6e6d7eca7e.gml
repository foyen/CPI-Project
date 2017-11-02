/// @description Insert description here
// You can write your code in this editor
if(alive)
{
	instance_create_layer(x, y, "Instances", obj_explosion)
	visible = false
	alive = false

	//respaen in 3 seconds after dying
	show_debug_message("alarm 3 set")
	alarm[3] = 3*room_speed
}