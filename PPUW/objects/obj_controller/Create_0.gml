/// @description spawn player object sprites

// all players
p1 = instance_create_layer(room_width/2-100, 600, "Characters", obj_player);
p2 = instance_create_layer(room_width/2+100, 600, "Characters", obj_player);

p2.image_xscale = -1; //flips the sprite of the cpu who spawns on the right by default presently
p2.controller = CONT_CPU;

// this helps with things like figuring out how to orient the sprites
p1.opponent = p2;
p2.opponent = p1;

// set characters
p1.character = CHAR_BALDWIN;
p2.character = CHAR_CPW;

with p1	SpriteHandler();

with p2 SpriteHandler();