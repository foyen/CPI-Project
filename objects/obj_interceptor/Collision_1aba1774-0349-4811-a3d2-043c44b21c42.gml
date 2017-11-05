/// @description Insert description here
// You can write your code in this editor

//score = score+100
if( abs(point_distance(x, y, object0.x, object0.y)) < 200 )
{
	instance_create_layer(x, y, "Instances", obj_explosion)
	instance_destroy()
}
