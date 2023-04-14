/// @description Applies damage and destroys hitbox on collision

if (other.owner == self){
	exit;
} else {

hp-= (other.damage * other.owner.pdamage) / pblock;

with other instance_destroy();
}