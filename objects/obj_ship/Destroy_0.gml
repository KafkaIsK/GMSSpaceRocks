lives -= 1;
audio_play_sound(snd_die, 1, false);

with(obj_game) {
	alarm[1] = room_speed;
}

var _xx = x, _yy = y, _ib = image_blend;
with(obj_particles) {
	part_particles_create_color(partSys, _xx, _yy, partTypeShipDebris, _ib, 10);
}