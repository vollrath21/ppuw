/// @description Applies damage and destroys hitbox on collision

if (other.owner == self){
	exit;
} else {

hp-= pdamage * other.damage;
with other instance_destroy();
}