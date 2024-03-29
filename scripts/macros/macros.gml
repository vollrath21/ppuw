#region //controllers for player controllable objects
#macro CONT_P1		0	// primary player
#macro CONT_CPU		1	// primary cpu
#endregion

#region // character UID's
#macro CHAR_BALDWIN		0
#macro CHAR_CPW			1
#macro CHAR_IRIS		2
#macro CHAR_KELLY		3
#macro CHAR_ROMIG		4
#endregion

#region // variables
#macro GRAVITY_FORCE	0.5 
#macro WALK_SPD			9
#macro RUN_SPD			WALK_SPD*2
#macro JUMP_SPD			-15
#macro MAX_HP			200
#endregion

#region // states
#macro STATE_FREE	0	// Can act as normal
#macro STATE_ATTACK 1	// locked out of certain controls during animation
#endregion

#region // attack types
#macro ATK_Punch	0
#macro ATK_Kick		1
#endregion