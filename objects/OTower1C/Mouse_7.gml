if(global.coins >= cost){
	instance_create_depth(mouse_x,mouse_y,-9,OTower1D);
	global.coins -= cost;
}