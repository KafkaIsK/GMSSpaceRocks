event_inherited();

if(!instance_exists(obj_ship)) exit;

if(point_distance(x, y, obj_ship.x, obj_ship.y) < 250) {
	var new_angle = point_direction(x, y, obj_ship.x, obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	image_angle = lerp(image_angle, new_angle, 0.1);
	direction = image_angle;
	
	if(point_distance(x, y, obj_ship.x, obj_ship.y) < 150) {
		speed -= 0.05
	} else {
		speed += 0.01;
	}
	
	bulletCounter++;
	if(bulletCounter >= 60) {
		create_bullet(x, y, image_angle, 8, faction, id);
		bulletCounter = 0;
	}
	
} else {
	speed = lerp(speed, originalSpeed, 0.1);
}