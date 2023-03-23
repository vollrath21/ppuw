function AnimationControl(){
	switch(state){
		case STATE_FREE:
			if (grounded) { // later this will need to also include: && !(crouched)
				if (hspeed == 0) { // TODO: This doesnt work perfectly until walking animations are implemented
					SetSprite(sp_idle);
				} else {
					// this is where forward or backward walking animations could be integrated
				} // this is where crouching animations might go
			} // this is where we could put falling animations
		break;
		
		case STATE_ATTACK:
			if (!can_attack){
				exit;
			}
			if (grounded) {
				//if (crouched) {
					// TODO: SetSprite( CROUCHED ATTACK )
				//} else {
					// TODO: Why doesn't this work?
					SetSprite(sp_attack[atk_type]);
				}
				can_attack = false;
			break;
			//}
			
	}
}