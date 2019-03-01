// Collison detection
// For now, just add new collidable objects to this array-
// (This must be done for every object that can collide, every time some new collidable is added)
var collidables = [obj_block, obj_weak_block];

for (var i=0; i<array_length_1d(collidables); i++) {
	// Instead of preventing a collision, let it overlap a bit and create a new "stuck" version of the shot
	if (place_meeting(x, y, collidables[i])) {
		var stuck = instance_create_layer(x, y, "harpoon_shots", obj_harpoon_shot_stuck)
		with (stuck) {
			image_angle = other.image_angle;
		}
		instance_destroy(self);
		exit;
	}
}

// Slow down shot from friction and apply "gravity"
hspeed -= sign(hspeed) * 0.05;
vspeed += 0.05;

// Make sure the shot's pointing in the right direction
image_angle = point_direction(x, y, x+hspeed, y+vspeed);
