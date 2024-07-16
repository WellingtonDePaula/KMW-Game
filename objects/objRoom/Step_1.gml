if(bbox_top > room_height) {
	var inst = -1;
	if(collider) {
		var col = -1;
		for(var i = 0; i < (room_height*2); i += 1) {
			col = instance_place(x, y-i, objWallClimber);
			if(!col) {
				instance_create_layer(x, y-i, "Instances", objWallClimber);
				break;
			}
		}
	}
	instance_destroy();
}