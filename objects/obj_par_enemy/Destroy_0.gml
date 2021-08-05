audio_play_sound(snd_die, 1, false)

var _xx = x, _yy = y, _ib = image_blend;
with(obj_particles) {
	part_particles_create_color(partSys, _xx, _yy, partTypeShipDebris, _ib, 10);
}

global.cameraShake = 4;

switch(object_index) {
	case obj_brute: 
		score += 20; 
		//no break
	case obj_hunter: 
		score += 15; 
		//no break
	case obj_raider: 
		score += 15;
		if(irandom_range(0, 2) == 0) {
			instance_create_layer(x, y, "Instances", obj_powerup);
		}
		break;
	case obj_mother: 
		score += 200;
		instance_create_layer(x, y, "Instances", obj_powerup);
		break;
}

