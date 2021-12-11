if(instance_number(OEnemy) <= 0){
	
	spawn_count = 0;
	spawn_amount++;
	global.wave++;
	global.hp += 10;
	global.spd += 0.1;
	spawn_rate -= 2.5;
	alarm[0] = spawn_rate;
	
}
alarm[1] = room_speed * 5;
