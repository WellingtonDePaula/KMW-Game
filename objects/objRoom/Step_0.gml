if(instance_exists(playerId) && instance_exists(line)) {
	if(playerId.velv < 0) {
		if(line.isTouch) {
			velv = lerp(velv, (-playerId.velv) + .5, .6);
		} else {
			velv = lerp(velv, -playerId.velv, .6);
		}
	} else {
		velv = lerp(0, velv, .1);
	}
} else {
	velv = 0;
}