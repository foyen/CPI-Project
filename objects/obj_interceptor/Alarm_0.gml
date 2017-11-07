/// @description Insert description here
// You can write your code in this editor
bullet = instance_create_layer(x,y, "instances", obj_base_enemyweapon)
bullet.image_angle = image_angle
var angle = image_angle mod 360

bullet.hspeed = dcos(angle) * obj_game_controller.global_base_bullet_speed
bullet.vspeed = -dsin(angle) * obj_game_controller.global_base_bullet_speed

canfire = false