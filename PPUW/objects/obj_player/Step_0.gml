/// @description Controls
#region //keybinds
right = (controller=CONT_P1)?ord("D"):vk_right; // binary operators
left =	(controller=CONT_P1)?ord("A"):vk_left;
up =	(controller=CONT_P1)?ord("W"):vk_up;
down =	(controller=CONT_P1)?ord("S"):vk_down;
punch =	(controller=CONT_P1)?ord("J"):vk_numpad7;
kick =	(controller=CONT_P1)?ord("K"):vk_numpad8;
#endregion

// Character Control
CharacterControls();

// Animation Control
AnimationControl();

// Hitbox Mechanics
HitDetection();

// Physics
Collisions();

if (controller == CONT_CPU){
	if (abs(point_distance(x, y, opponent.x, opponent.y)) <= 250) {
		alarm[0] = 1.75;
		keyboard_key_release(vk_left);
		keyboard_key_release(vk_right);
		//hspeed=0;
		
	}
	if (point_distance(x, y, opponent.x, opponent.y) >= 400) {
		//move_towards_point(opponent.x, 735, random(1)*WALK_SPD);
		if (image_xscale == -1){
		
		keyboard_key_press(vk_left);
		//hspeed = sign(image_xscale) * WALK_SPD * random(1);
	} else {
		keyboard_key_press(vk_right);
		//hspeed = sign(image_xscale) * WALK_SPD * random(1);
	}
	}
}