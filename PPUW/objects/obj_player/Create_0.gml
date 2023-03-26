/// @description Variables

// stats
hp = 200;	// default
			// max hp is in macros
			// actual hp is set in obj_controller initialization
pdamage = 1;			// powerup damage77877887878778887788887778787787887787888878
pspeed = 1;				// powerup speed
hspeed = 0;				// Horizontal speed
vspeed = 0;				// Vertical speed 
grav = GRAVITY_FORCE;	// Specifically not using built-in gravity because it was finnicky

character = CHAR_KELLY;	// default for initialization, overridden in controller obj
controller = CONT_P1;

opponent = noone;

state = STATE_FREE;

crouched = false;		// Unimplemented: Maybe in Beta
grounded = false;		// is the player touching the ground?
can_attack = true;	
atk_type = ATK_Punch;	// Presently choosing from either punch or kick
