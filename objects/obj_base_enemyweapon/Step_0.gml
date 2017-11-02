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


hspeed = varx * 35
vspeed = -vary * 35