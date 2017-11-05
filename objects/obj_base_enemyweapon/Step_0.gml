/// @description Insert description here
// You can write your code in this editor
angle = image_angle mod 360
varx =   dcos(angle);
vary =   dsin(angle);

if(angle < 0 )
{
	angle += 360
}

// show_message(string(angle));
var magnitude = sqrt((varx*varx) + (vary* vary))

if(magnitude != 0)
{

var unit_x = varx / magnitude

var unit_y = vary / magnitude

}

else
{

}


hspeed = varx * 18
vspeed = -vary * 18

if (x > room_width+50) { instance_destroy() }
if (x < -50) { instance_destroy() }
if (y > room_height+50) { instance_destroy() }
if (y < -50) { instance_destroy() }