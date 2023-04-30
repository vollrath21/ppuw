/// @description Controls
#region //keybinds
right = (controller=CONT_P1)?ord("D"):vk_right; // binary operators
left =	(controller=CONT_P1)?ord("A"):vk_left;
up =	(controller=CONT_P1)?ord("W"):vk_up;
down =	(controller=CONT_P1)?ord("S"):vk_down;
punch =	(controller=CONT_P1)?ord("J"):vk_divide;
kick =	(controller=CONT_P1)?ord("K"):vk_backspace;
block =	(controller=CONT_P1)?ord("L"):vk_ralt;
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
	var dist = abs(point_distance(x, y, opponent.x, opponent.y));
	if (round(random(24)) == 24) {
		keyboard_key_press(vk_up);
		keyboard_key_release(vk_up);
	}
	if (dist <= 225) {
		alarm[0] = 1.75;
		keyboard_key_release(vk_left);
		keyboard_key_release(vk_right);
		
		//This block below is an unoptimized 75% chance to move towards player, otherwise away
	} else if (dist < 500 && dist > 225) {
		keyboard_key_release(vk_left);
		keyboard_key_release(vk_right);
		if (image_xscale == -1){
			if (round(random(4)) <= 3) {
				keyboard_key_press(vk_left);
			} else {
			keyboard_key_press(vk_right);
			} } else {
				if (round(random(4)) <= 3) {
					keyboard_key_press(vk_right);
				} else {
					keyboard_key_press(vk_left);
				}
			}
	} else if (dist >= 500) {
		if (image_xscale == -1){
			keyboard_key_press(vk_left);
		} else {
			keyboard_key_press(vk_right);
		}
	}
}