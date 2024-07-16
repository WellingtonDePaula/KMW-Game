if(instance_exists(global.player) && instance_exists(line)) {
	if(global.player.velv < 0) {
		if(line.isTouch) {
			velv = lerp(velv, (-global.player.velv) + .5, .6);
		} else {
			velv = lerp(velv, -global.player.velv, .6);
		}
	} else {
		velv = lerp(0, velv, .1);
	}
} else {
	velv = 0;
}