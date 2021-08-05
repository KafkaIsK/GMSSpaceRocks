if(!instance_exists(obj_interceptor)) exit;

if(point_distance(x, y, obj_par_enemy.x, obj_par_enemy.y) < 250) {
	var new_angle = point_direction(x, y, obj_par_enemy.x, obj_par_enemy.y);
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	image_angle = lerp(image_angle, new_angle, 0.1);
	direction = image_angle;
	
	speed += 0.02;
	
} else {
	speed = lerp(speed, originalSpeed, 0.1);
}