var shot = instance_create_layer(x+sign(facingDirection)*3, y-2, "harpoon_shots", obj_harpoon_shot);
with (shot) {
	hspeed =  cos(degtorad(other.spriteRotation)) * 10;
	vspeed = -sin(degtorad(other.spriteRotation)) * 10 + random(0.3);
}
