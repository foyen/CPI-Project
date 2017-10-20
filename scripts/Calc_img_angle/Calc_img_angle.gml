var obj , target_x, target_y

target_x = argument0
target_y = argument1
obj = argument2

var vx = target_x - obj.x; //x compenent of our vector

var vy = target_y - obj.y; //y component of our vector

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
//calculate the angle ... this

var radians = arctan2(-unit_y, unit_x)

obj.image_angle = radtodeg(radians)