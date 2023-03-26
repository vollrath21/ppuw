/// @description Insert description here
if (p2.hp <= 0) {
		room_goto(win);
}
if (p1.hp <= 0) {
		room_goto(lose);
}

if (round(random(150)) == 0) {
	if(round(random(1))==0){
		instance_create_layer(round(random(room_width)), 500, "Instances", obj_powerup);
	} else {
		instance_create_layer(round(random(room_width)), 500, "Instances", obj_damage);	
	}
}