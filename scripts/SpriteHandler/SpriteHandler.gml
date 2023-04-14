function SpriteHandler(){
	switch(character){
		case CHAR_BALDWIN:
			sp_idle = Baldwin_Idle;
			
			// Refer to Macros for the index associated with every attack
			sp_attack = [Baldwin_Punch, Baldwin_Kick]; 
			// Frame on which hitboxes are generated per attack
			// Until full animation, generic punches come out on the last frame and kicks in the middle frames
			// this is still ludicrously fast but simulates minor windup and endlag
			attack_indexes = [[3],[7]];
		break;
		
		case CHAR_CPW:
			sp_idle = CPW_Idle;
			sp_attack = [CPW_Punch, CPW_Kick];
			attack_indexes = [[3],[7]];
		break;
		
		case CHAR_IRIS:
			sp_idle = Iris_Idle;
			sp_attack = [Iris_Punch, Iris_Kick];
			attack_indexes = [[3],[7]];
		break;
		
		case CHAR_KELLY:
			sp_idle = Kelly_Idle;
			sp_attack = [Kelly_Punch, Kelly_Kick];
			attack_indexes = [[3],[7]];
		break;
		
		case CHAR_ROMIG:
			sp_idle = Romig_Idle;
			sp_attack = [Romig_Punch, Romig_Kick];
			attack_indexes = [[3],[7]];
		break;
	}

	sprite_index = sp_idle;
}