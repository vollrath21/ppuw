/// @description Insert description here
// You can write your code in this editor
if (irandom(150) == 0) {
	if(irandom(1)==0){
		instance_create_layer(irandom(room_width), 0, "Instances", obj_powerup);
	} else {
		instance_create_layer(irandom(room_width), 0, "Instances", obj_damage);	
	}
}






