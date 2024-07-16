event_inherited();
if(instance_exists(global.player)) {
	if(place_meeting(x, y, global.player)) {
		instance_destroy(global.player);
	}
}