// Collison detection
// For now, just add new collidable objects to this array
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


// Slow the player down
// ...somewhat slowly
if (not keyboard_check(vk_left) and not keyboard_check(vk_right)) {
	hspeed /= 1.1;
}

if (not keyboard_check(vk_up) and not keyboard_check(vk_down)) {
	vspeed /= 1.1;
}

// Change animation speed based on how fast the player is moving
image_speed = clamp((abs(vspeed) + abs(hspeed)) / (8) - 0.2, 0, 1);

// Making sure the sprite is facing the right way
// Using 2 for scaling here, since I doubled the object size. We may want to just scale the actual sprite up later
if (keyboard_check(vk_left) && hspeed < 0) {
	image_xscale = -2;
} else if (keyboard_check(vk_right) && hspeed > 0) {
	image_xscale = 2;
}