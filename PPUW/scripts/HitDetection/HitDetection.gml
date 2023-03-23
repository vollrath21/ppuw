function HitDetection(){
	switch(state){
	case STATE_ATTACK:
		// check animation index to check if hitbox should be generated
		
		if (grounded) {
			var indexes = attack_indexes[atk_type];
			
			for (var i = 0; i < array_length(indexes); i++){
				if (round(image_index) == indexes[i]) {
					HitHandler(self, noone, 4, sprite_width * sign(image_xscale) / 2, 300);
				}
			}
		}
		
	break;
	}
}