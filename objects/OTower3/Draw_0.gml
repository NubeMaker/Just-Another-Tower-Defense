draw_self();
draw_circle(x,y,range,true);

var Nearest_Enemy = instance_nearest(x,y,OEnemy);
if(Nearest_Enemy != noone){
	if(point_distance(x,y,Nearest_Enemy.x,Nearest_Enemy.y) <= range){
		if(!shooting){
			alarm[0] = 1;
			shooting = true;
		}
		
		ObjectToShoot = Nearest_Enemy;
		draw_line(x,y,Nearest_Enemy.x,Nearest_Enemy.y);
	}else{
		shooting = false;
		ObjectToShoot = noone;
	}
}