/// @description Insert description here
// You can write your code in this editor
if(!bomb_set)
{
	instance_create_layer(x, y, "Instances", obj_smartbomb)
	bomb_set = true
}