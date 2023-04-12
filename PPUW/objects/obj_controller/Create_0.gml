/// @description Spawn player object sprites

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


// set characters
// p2 should always be the CPU
if (global.myplayer == 1) {
	p1.character = CHAR_BALDWIN;
}
else if (global.myplayer == 2) {
	p1.character = CHAR_CPW;
}
else if (global.myplayer == 3) {
	p1.character = CHAR_IRIS;
}
else if (global.myplayer == 4) {
	p1.character = CHAR_KELLY;
}
else if (global.myplayer == 5) {
	p1.character = CHAR_ROMIG;
}
//p1.character = CHAR_KELLY;
p2.character = CHAR_ROMIG;

with p1	SpriteHandler();

with p2 SpriteHandler();

// get powerups spawning
instance_create_layer(0, 0, "Instances", obj_SpawnPowerups);