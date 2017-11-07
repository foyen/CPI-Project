/// @description Insert description here
// You can write your code in this editor

//commented code is not used anymore since many enenmies will create their own
//bullet angle(S) on the same object.
//for instance the bio weapon will fire many bullets off its own immage angle.
// meaing bullet angles need to be calculated on his terms

image_angle = direction


//angle = image_angle mod 360
//varx =   dcos(angle);
//vary =   dsin(angle);



// show_message(string(angle));
//var magnitude = sqrt((varx*varx) + (vary* vary))

//if(magnitude != 0)
//{
//var unit_x = varx / magnitude
//var unit_y = vary / magnitude
//}



//hspeed = hspeed * obj_game_controller.global_base_bullet_speed
//vspeed = vspeed * obj_game_controller.global_base_bullet_speed

if (x > room_width+50) { instance_destroy() }
if (x < -50) { instance_destroy() }
if (y > room_height+50) { instance_destroy() }
if (y < -50) { instance_destroy() }