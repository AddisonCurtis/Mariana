var wallR = collision_point(x+32, y, obj_weak_block_r_h, false, false);
var wallL = collision_point(x-32, y, obj_weak_block_r_h, false, false);
if (wallR) {
	instance_destroy(wallR);	
}

if (wallL) {
	instance_destroy(wallL);	
}
