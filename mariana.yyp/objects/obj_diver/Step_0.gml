// Collison detection
// For now, just add new collidable objects to this array-
// (This must be done for every object that can collide, every time some new collidable is added)
var collidables = [obj_block, obj_weak_block];

for (var i=0; i<array_length_1d(collidables); i++) {
	if (place_meeting(x+hspeed, y, collidables[i])) {
		hspeed = 0;
		break;
	}
}

for (var i=0; i<array_length_1d(collidables); i++) {
	if (place_meeting(x, y+vspeed, collidables[i])) {
		vspeed = 0;
		break;
	}
}


// Speed limiting the player
hspeed = clamp(hspeed, -4, 4);
vspeed = clamp(vspeed, -4, 4);

// Make sure the player is angled currectly, but don't touch it if they're not/barely moving
if (abs(hspeed) > 0.1 or abs(vspeed) > 0.1) {
	spriteRotation = point_direction(x, y, x+hspeed, y+vspeed);
}

if (spriteRotation > 90 and spriteRotation < 270) {
	facingDirection = abs(facingDirection) * -1;
} else {
	facingDirection = abs(facingDirection);
}

// Slow the player down
// ...somewhat slowly
if (not keyboard_check(vk_left) and not keyboard_check(vk_right)) {
	hspeed *= 0.9;
}

if (not keyboard_check(vk_up) and not keyboard_check(vk_down)) {
	vspeed *= 0.9;
}

// Change animation speed based on how fast the player is moving
image_speed = clamp((abs(vspeed) + abs(hspeed)) / 7, 0.2, 0.7);

// Making sure the sprite is facing the right way
/* Obsolete with new directional system
if (keyboard_check(vk_left) && hspeed < 0) {
	image_xscale = abs(image_xscale) * -1;
} else if (keyboard_check(vk_right) && hspeed > 0) {
	image_xscale = abs(image_xscale);
}
*/
