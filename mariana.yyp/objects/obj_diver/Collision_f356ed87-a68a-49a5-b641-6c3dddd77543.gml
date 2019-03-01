if (currentCameraSnapPoint != other) {
	currentCameraSnapPoint = other;
	var cam = view_get_camera(0);
	camera_set_view_pos(cam, other.x, other.y);
}