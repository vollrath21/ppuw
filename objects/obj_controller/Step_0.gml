/// @description Insert description here
if (p2.hp <= 0) {
	if ( room == rm_level1){
		room_goto(rm_level2);
	} else if ( room == rm_level2){
		room_goto(rm_level3);
	} else {
		room_goto(win);
	}
}
if (p1.hp <= 0) {
		room_goto(lose);
}