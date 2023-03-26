// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cpu_ai(){
	if (abs(p2.x) - abs(p1.x) <= 50){
		p2.alarm[0] = 20/room_speed; // random delay
	}
}