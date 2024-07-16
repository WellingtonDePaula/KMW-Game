cellW = sprite_get_width(sprWallClimber);
cellH = sprite_get_height(sprWallClimber);

cellWidth = room_width div cellW;
cellHeight = (room_height * 2) div cellH;

distanceFromPlayer = 4;

global.grid = ds_grid_create(cellWidth, cellHeight);
ds_grid_set_region(global.grid, 0, 0, cellWidth, cellHeight, 0);

for(i = 0; i < ds_grid_width(global.grid); i++) {
	for(j = 0; j < ds_grid_height(global.grid); j++) {
		
		if(i == ds_grid_width(global.grid)/2 - distanceFromPlayer || i == ds_grid_width(global.grid)/2 + distanceFromPlayer) {
			global.grid[# i, j] = 1;
		}
		
		if(global.grid[# i, j] == 1) {
			instance_create_layer(i* cellW, -room_height +	(j * cellH), "Instances", objWallClimber);
		}
		
	}
}