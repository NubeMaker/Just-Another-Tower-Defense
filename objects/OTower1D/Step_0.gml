x = mouse_x;
y = mouse_y;

if(place_meeting(x,y,OPathBlock) or place_meeting(x,y,OTowerParent)) color = c_red;
else color = c_white;