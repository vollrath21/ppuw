// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cpu_ai(){
	if (abs(p2.x) - abs(p1.x) <= 250){
		p2.alarm[0] = fps/20; // random delay
	}
}