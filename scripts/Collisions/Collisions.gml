/// @Description Physics

// TODO: Fix bug where Player objects get stuck after running into vertical walls

function Collisions(){
	// manual gravity
	vspeed += grav;
	
	// horizontal collisions
	if place_meeting(x + hspeed, y, obj_ground) {
		while !place_meeting(x+sign(hspeed), y, obj_ground) {
		x += sign(hspeed);
		}
	hspeed = 0;
	}

	// vertical collisions
	grounded = place_meeting(x, y + vspeed, obj_ground);
	if grounded {
		
		while !place_meeting(x, y + sign(vspeed), obj_ground) {
		y += sign(vspeed);
		}
	vspeed = 0;
	}
}