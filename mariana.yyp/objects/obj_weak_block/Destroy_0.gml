var wallU = collision_point(x, y-32, obj_weak_block, false, false);
var wallD = collision_point(x, y+32, obj_weak_block, false, false);
if (wallU) {
	instance_destroy(wallU);	
}

if (wallD) {
	instance_destroy(wallD);	
}
