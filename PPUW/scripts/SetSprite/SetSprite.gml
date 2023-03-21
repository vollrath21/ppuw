function SetSprite(argument0){
	if (sprite_index != argument0) {
		image_index = 0;
		sprite_index = argument0;
		return true;
	}
	return false;
}