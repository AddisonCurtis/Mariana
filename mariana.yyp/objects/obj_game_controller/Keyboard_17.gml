if (dead) {
	exit;	
}

if (keyboard_check_pressed(ord("H"))) {
	hp = 99999;
}

if (keyboard_check_pressed(ord("G"))) {
	ammo = 99999;
}

if (keyboard_check_pressed(ord("C"))) {
	noclip = not noclip;
}
