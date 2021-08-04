if(keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	image_angle += 5;
}

if(keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	image_angle -= 5;
}

if(keyboard_check(vk_up) || keyboard_check(ord("W"))) {
	motion_add(image_angle, 0.05);
	
	exhaustCounter++;
	if(exhaustCounter >= 4) {
		var len = sprite_height * 0.4;
		var _xx = x - lengthdir_x(len, image_angle);
		var _yy = y - lengthdir_y(len, image_angle);
		with(obj_particles) {
			part_particles_create(partSys, _xx, _yy, partTypeExhaust, 1);
		}
		exhaustCounter = 0;
	}
}

if(keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)) {
	create_bullet(x, y, image_angle, bulletSpd, faction, id, guns);
}

move_wrap(true, true, sprite_width / 2);