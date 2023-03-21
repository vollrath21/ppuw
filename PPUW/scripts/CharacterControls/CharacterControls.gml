function CharacterControls(){
	if (grounded){
		image_xscale = (opponent.x>x)?1:-1;	// binary operator to flip sprites to face opponent
	}
	
	
	switch(state){
		case STATE_FREE:
			can_attack = true;
			if (grounded){
				if !(crouched){
					// if both keys are held, dont move
					hspeed = WALK_SPD*(kc(right)-(kc(left)));
				} else {
					hspeed = 0;	
				}
				
				if kcp(up){ // Jump
					vspeed = JUMP_SPD;
					landed = false;
				}
			}else{
			// things Players can do in the air
			}
			// attacks
			if kcp(punch) {
				SetAttack(ATK_Punch);
				break;
			}
			else if kcp(kick){
				SetAttack(ATK_Kick);	
				break;
			}
		break;
		
	case STATE_ATTACK:
		if (grounded){
			hspeed = 0;
		}
		
		// if the animation is over, the attack should end
		// we dont have an animation though so somehow we wanna track like 10-20 frames and then end it?
		// not sure if the attack sprite plays at the moment
		if (AnimEnd()) { 
			state = STATE_FREE;
		}
		break;
	}
}