if (obj_game_controller.ammo > 0) {
	obj_game_controller.ammo--;
	var shot = instance_create_layer(x+facingDirection*3, y-2, "Harpoon_shots", obj_harpoon_shot);
	
	with (shot) {
		// Make sure it's headed in the right direction
		hspeed =  cos(degtorad(other.spriteRotation)) * 10;
		vspeed = -sin(degtorad(other.spriteRotation)) * 10;
		
		// Add a bit of variance to the shot
		hspeed += vspeed * (random(0.05) - 0.025);
		vspeed += hspeed * (random(0.05) - 0.025);
	}
}
