///@description initialise_bullet
///@arg object
///@arg x
///@arg y
///@arg direction
///@arg speed
///@arg faction


function initialise_bullet(_obj, _x, _y, _dir, _spd, _fac, _creator){

	var inst = instance_create_layer(_x, _y, "Instances", _obj);
	
	with(inst) {
		direction = _dir;
		if(object_index == obj_bullet) speed = _spd;
		faction = _fac;
		creator = _creator;
		
		if(faction == factions.ally) image_blend = c_aqua;
		else if(faction == factions.enemy) image_blend = c_red;
	}
}