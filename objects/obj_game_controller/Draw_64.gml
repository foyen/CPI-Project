/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_text(50,50,"X Velocity: " + string(obj_interceptor.alarm[0]))
draw_text(50,70,"Y Velocity: " + string(obj_interceptor.velocity_y))
draw_text(50,90,"UNIT X: " + string(object0.unit_x))
draw_text(50,110,"UNIT Y: " + string(object0.unit_y))
draw_text(50,130,"ANGLE: " + string(object0.angle))
draw_text(50,150,"1: " + string((object0.unit_x*object0.movement_speed)))
draw_text(50,170,"2: " + string((object0.unit_x*(object0.movement_speed))*-1))
draw_text(50,190,"3: " + string((object0.unit_y*object0.movement_speed)))
draw_text(50,210,"4: " + string((object0.unit_y*(object0.movement_speed))*-1))