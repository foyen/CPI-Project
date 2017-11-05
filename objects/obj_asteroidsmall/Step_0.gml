/// @description Insert description here
// You can write your code in this editor
x += velocity_x
y -= velocity_y
step_count++

if (step_count mod 6 = 0)
{
	if (x > room_width) { x = room_width-1; velocity_x *= -1 }
	if (x < 0) { x = 1; velocity_x *= -1 }
	if (y > room_height) { y = room_height-1; velocity_y *= -1 }
	if (y < 0) { y = 1; velocity_y *= -1 }
}
