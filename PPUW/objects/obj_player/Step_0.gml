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