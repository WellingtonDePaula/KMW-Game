event_inherited();
if(instance_exists(playerId)) {
	if(place_meeting(x, y, playerId)) {
		instance_destroy(playerId);
	}
}