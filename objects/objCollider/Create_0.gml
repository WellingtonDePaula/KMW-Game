event_inherited();
collider = true;
for(var i = 0; i < 8; i ++) {
	var col = instance_place(x, y + i, objWallClimber);
	if(col) {
		velv = col.velv;
		y += velv;
		y = col.bbox_top-sprite_get_height(sprite_index);
		break;
	}
}