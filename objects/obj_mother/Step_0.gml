event_inherited();

if (HP >= 16) {
	image_index = 0;
} else if (HP >= 12) {
	image_index = 1;
} else if (HP >= 8) {
	image_index = 2;
} else {
	image_index = 3;
}


if(!instance_exists(obj_ship)) exit;

if(point_distance(x, y, obj_ship.x, obj_ship.y) < 300) {
	spawnCounter++;
	if(spawnCounter >= 50) {
		instance_create_layer(x, y, "Instances", obj_hunter);
		spawnCounter = 0;
	}
} else {
	
}