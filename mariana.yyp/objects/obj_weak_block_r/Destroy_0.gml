var wallU = collision_point(x, y-32, obj_weak_block_r, false, false);
var wallD = collision_point(x, y+32, obj_weak_block_r, false, false);
if (wallU) {
	instance_destroy(wallU);	
}

if (wallD) {
	instance_destroy(wallD);	
}
