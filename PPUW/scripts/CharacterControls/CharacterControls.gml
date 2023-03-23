function CharacterControls(){
	switch(state){
		case STATE_FREE:
			can_attack = true;
			if (grounded){
				// flip sprites to face opponent
				image_xscale = (opponent.x>x)?1:-1;	
				
				if !(crouched){
					// if both keys are held, dont move
					hspeed = WALK_SPD*(kc(right)-(kc(left)));
				} else {
					hspeed = 0;	
				}
				
				if kcp(up){ // Jump
					vspeed = JUMP_SPD;
					grounded = false;
				}
			}else{
			// things Players can do in the air
			}
			
			// attacks
			if kcp(punch) {
				SetAttack(ATK_Punch);
				break;
			} else if kcp(kick){
				SetAttack(ATK_Kick);	
				break;
			}
		break;
		
	case STATE_ATTACK:
	
		// Players shouldn't be moving while attacking
		if (grounded){
			hspeed = 0;
		}
		
		// if the animation is over, the attack should end
		if (AnimEnd()) { 
			state = STATE_FREE;
		}
		break;
	}
}