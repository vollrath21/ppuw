/// @description Insert description here
// You can write your code in this editor
if (round(random(150)) == 0) {
	if(round(random(1))==0){
		instance_create_layer(round(random(room_width)), 0, "Instances", obj_powerup);
	} else {
		instance_create_layer(round(random(room_width)), 0, "Instances", obj_damage);	
	}
}






