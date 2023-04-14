/// @description Spawn player object sprites
randomise();

// all players
p1 = instance_create_layer(room_width/2-300, 400, "Characters", obj_player);
p2 = instance_create_layer(room_width/2+300, 400, "Characters", obj_player);

p2.image_xscale = -1;	//flips the sprite of the cpu who spawns on the right by default presently 
p2.controller = CONT_CPU;

// Sets actual player hp for round
p2.hp = 200
p1.hp = 200
// for functions that orient the sprites
p1.opponent = p2;
p2.opponent = p1;


// set characters	EDIT: Updated code to use existing macros, including char_select obj's
p1.character = global.myplayer;
p2.character = global.myplayer; // p2 should always be the CPU
// Choose an opponent that is not a duplicate of the player's professor
while (p2.character == p1.character) {
	p2.character = irandom(4);
}

with p1	SpriteHandler();

with p2 SpriteHandler();

// get powerups spawning
instance_create_layer(0, 0, "Instances", obj_SpawnPowerups);