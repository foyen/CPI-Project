/// @description Insert description here
// You can write your code in this editor

var vx = object0.x - x; //x compenent of our vector
var vy = object0.y - y; //y component of our vector
 
var magnitude = sqrt((vx*vx) + (vy*vy)) //a^2 + b^2 = c^2

if(magnitude > 0)
{
//calculate the unit vector
var unit_x = vx / magnitude
var unit_y = vy / magnitude
}
else
{
//avoid divide by 0
                unit_x = 0
                unit_y = 0
}

velocity_x = unit_x * movement_speed
velocity_y = unit_y * movement_speed

x += velocity_x
y += velocity_y

//calculate the angle ... this
var radians = arctan2(-unit_y, unit_x)
image_angle = radtodeg(radians)
image_speed = 1

if(abs(point_distance(x,y,object0.x, object0.y))<200)/// if too close decelerate
{
	x -= velocity_x * .95 
	y -= velocity_y * .95

}

if(abs(point_distance(x,y,object0.x, object0.y))< 800) // inrange to fire
{
	
		var angle = image_angle mod 360
		show_debug_message(string(angle))
	if(reloaded)
	{
	 for(var i =-10; i < 10; i+= 5)
	 {
		show_debug_message("fireing " + string(i))
		var bullet = instance_create_layer(x,y, "instances", obj_base_enemyweapon)
		bullet.image_angle = image_angle
	
		var vec_x = dcos(angle + i + irandom_range(-5,5))
		var vec_y = dsin(angle + i + irandom_range(-5,5))
		bullet.hspeed = vec_x * obj_game_controller.global_base_bullet_speed
		bullet.vspeed = -vec_y * obj_game_controller.global_base_bullet_speed
		
		
	 }
	 reloaded = false
	 alarm[0] = room_speed * 2
	}
		
}


if(bio_health < 0){
 var explo = instance_create_layer(x,y, "Instances", obj_explosion)
 explo.image_xscale = 5
 explo.image_yscale = 5
 explo.image_speed = 0.65
 score+= 10000
 instance_destroy()

}