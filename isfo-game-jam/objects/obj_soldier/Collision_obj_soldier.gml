/// @description Move away from the other soldier

x -= 0.1 * (other.x - x);
y -= 0.1 * (other.y - y);

if(sqr(obj_player_centre.x - x) + sqr(obj_player_centre.y - y) < sqr(25 * instance_number(obj_soldier)))
	move = false;