if(bbox_top > room_height) {
	if(collider) {
		for(var i = 0; i < room_height*2; i += 1) {
			var col = instance_place(x, y-i, objWallClimber);
			if(!col) {
				instance_create_layer(x, (y-i), "Instances", objWallClimber);
			}
		}
	}
	instance_destroy();
}