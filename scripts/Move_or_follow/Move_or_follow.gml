var obj_x,obj_y, target_x, target_y, obj;

obj_x = argument0
obj_y = argument1
target_x= argument2
target_y= argument3
obj = argument4

var vx = target_x - obj_x; //x compenent of our vector

var vy = target_y - obj_y; //y component of our vector
 
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
 
obj.velocity_x = unit_x * 5
obj.velocity_y = unit_y * 5 

 
self.x += self.velocity_x 
self.y += self.velocity_y  

 
//calculate the angle ... this
var radians = arctan2(-unit_y, unit_x)

self.image_angle = radtodeg(radians)
self.image_speed = 1