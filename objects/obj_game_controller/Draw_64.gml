/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_text(50,50,"Score: " + string(score))
draw_text(50,70,"Astronauts In Ship: " + string(object0.astronaut_count))
draw_text(50,90,"Astronauts Remaining: " + string(instance_number(obj_astronaut)))
draw_text(50,110,"Enemies Remaining: " + string(instance_number(obj_interceptor)))
/*draw_text(50,110,"Enemy new Y: " + string(obj_interceptor.y + obj_interceptor.velocity_y))
draw_text(50,130,"Enemy X Speed: " + string(abs(obj_interceptor.x + obj_interceptor.velocity_x - obj_interceptor.x )))
draw_text(50,150,"Enemy Y Speed: " + string(abs(obj_interceptor.y + obj_interceptor.velocity_y - obj_interceptor.y)))
draw_text(50,170,"Enemy Speed: " + string((obj_interceptor.movement_speed)))
//draw_text(50,190,"3: " + string((object0.unit_y*object0.movement_speed)))
//draw_text(50,210,"4: " + string((object0.unit_y*(object0.movement_speed))*-1))