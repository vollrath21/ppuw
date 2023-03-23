function SpriteHandler(){
	switch(character){
		case CHAR_BALDWIN:
			sp_idle = Baldwin_Idle;
			sp_kick = Baldwin_Kick;
			sp_punch = Baldwin_Punch;
			
			sp_attack = [ATK_Punch, ATK_Kick];
		break;
		
		case CHAR_CPW:
			sp_idle = CPW_Idle;
			sp_kick = CPW_Kick;
			sp_punch = CPW_Punch;
		break;
	}

	sprite_index = sp_idle;
}