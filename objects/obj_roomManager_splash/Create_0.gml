/*
Three rooms, with the "splashRoom" set as the
first room in the "room manager" (tiny menu inside
asset browser menu-chooser/hamburger, upper right
corner).

Each room has its own "controller object"
because rooms clear out all of their objects
every time you switch to a new one.  So each
of my rooms has a custom controller object that
makes a few things happen, usually using alarms/timers.

In addition to each room's controller object,
I have a few "text" and "graphic" objects, that
don't really do anything except serve as a canvas
for my sprites.  

---

I use alarms to create pauses, but every now
and then (nyan cat movement) I will use
a conditional in the STEP event (is nyancat
at 200 pixels yet?) in order to set a new alarm.

That is, nyan cat moves right to left, but
once it is in place, a timer starts, and after
a second or two, we go to the next room.

I always specify which room I want to go to:
e.g.,
	room_goto(playerReadyRoom);

I never use:
	"room_goto(next)".

*/


graphic = instance_create_layer(1000,450,"Instances",OLonely);
graphic.image_xscale = -0.5;
graphic.image_yscale = 0.5;
graphic.speed = 2.2;
graphic.direction = 180;

titles = instance_create_layer(room_width,room_height,"Instances",OTitle);
titles.visible = true;
titles.x = room_width/2;
titles.y = room_width/3;

alarm_set(0, 2 * 60);