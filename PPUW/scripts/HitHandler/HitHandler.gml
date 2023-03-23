function HitHandler(owner, effect, damage, xoffset, yoffset){
	var hit = instance_create_layer(x + (xoffset * sign(image_xscale)), y - yoffset, "Instances", obj_hitbox);
	hit.owner = owner;
	hit.effect = effect;
	hit.damage = damage;
	hit.xoffset = xoffset;
	hit.yoffset = yoffset;
}