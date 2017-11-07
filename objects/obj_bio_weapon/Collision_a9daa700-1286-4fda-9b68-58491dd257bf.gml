/// @description Insert description here
// You can write your code in this editor
bio_health -= other.dammage

//create explostion small
var explosion = instance_create_layer(other.x, other.y, "instances",obj_explosion)
explosion.image_xscale = .5
explosion.image_yscale = .5