///// Create Event:

image_xscale = 2;
image_yscale = 2;

grav = 0.2;          // starting gravity
grav_max = 0.5;      // maximum gravity
grav_growth = 0.02;  // how quickly gravity ramps up

glideVel = 3;

flap_strength = -10;  // how strong the flap pushes upward
yspd = 0;          // starting vertical speed
termVel  = 10;      // Max fall velocity


state = BirdState.FALL;
hold_timer = 0;
hold_threshold = 12;

flap_pressed = false; // unused
counter = 0; // unused
holding = false; // unused

enum BirdState { 
	
	FALL,
	
	FLAP_UP, //unused
	
	FLAP_DOWN, //unused
	
	FLAP,
	
	GLIDE 
	
	
	}