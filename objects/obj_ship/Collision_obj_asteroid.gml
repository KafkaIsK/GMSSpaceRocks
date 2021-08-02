instance_destroy();
lives -= 1;

repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris);
}