if(global.coins >= cost){
	instance_create_depth(mouse_x,mouse_y,-9,OTower3D);
	global.coins -= cost;
}