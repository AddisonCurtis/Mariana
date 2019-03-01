var shot = instance_create_layer(x+sign(facingDirection)*3, y-2, "Harpoon_shots", obj_harpoon_shot);
with (shot) {
	hspeed =  cos(degtorad(other.spriteRotation)) * 10;
	vspeed = -sin(degtorad(other.spriteRotation)) * 10;
	// Add a bit of variance
	hspeed += vspeed * (random(0.05) - 0.025);
	vspeed += hspeed * (random(0.05) - 0.025);
}
