/// @description Insert description here
// You can write your code in this editor
if(alive)
{
	if(reloaded) 
	{

	reloaded = false
	instance_create_layer(x,y, "instances", obj_base_weapon)
	alarm[2] = .25 * room_speed

	}
}
