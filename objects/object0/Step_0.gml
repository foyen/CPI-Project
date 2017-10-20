/// @description Insert description here
// You can write your code in this editor
 if(leftPressed){
 image_angle += 10 mod 360;
 
 }
 
 
 
 if(rightPressed){
 image_angle -= 10 mod 360;
 
 }
 
 if(upPressed) {
 angle = image_angle mod 360
varx =   dcos(angle);
vary =   dsin(angle);

if(angle < 0 ) 
{
	angle += 360
}
// show_message(string(angle));
var magnitude = sqrt((varx*varx) + (vary* vary))

if(magnitude > 0)

{

//calculate the unit vector

var unit_x = varx / magnitude

var unit_y = vary / magnitude

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

y -= velocity_y

 }
 