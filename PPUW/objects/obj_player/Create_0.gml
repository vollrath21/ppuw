/// @description Variables

// stats
hp = 200	// this is hp current default
			// max hp is in macros


hspeed = 0;				// Horizontal speed
vspeed = 0;				// Vertical speed 
grav = GRAVITY_FORCE;	// Specifically not using built-in gravity because it was finnicky

character = CHAR_BALDWIN;	// default for initialization
controller = CONT_P1;

opponent = noone;

state = STATE_FREE;

crouched = false;		// Unimplemented: Maybe in Beta
grounded = false;		// is the player touching the ground?
can_attack = true;	
atk_type = ATK_Punch;	// Presently choosing from either punch or kick