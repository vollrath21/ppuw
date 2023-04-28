/// @description Applies damage and destroys hitbox on collision

if (other.owner == self){
	exit;
} else {

hp-= (other.damage * other.owner.pdamage) / pblock;
audio_play_sound(Punch, 9, false, , 2);
with other instance_destroy();
}