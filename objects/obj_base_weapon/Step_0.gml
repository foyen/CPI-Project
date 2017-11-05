/// @description Insert description here
// You can write your code in this editor
step_count++

if (x > room_width+50) { instance_destroy() }
if (x < -50) { instance_destroy() }
if (y > room_height+50) { instance_destroy() }
if (y < -50) { instance_destroy() }

if (step_count > 30) { instance_destroy() }