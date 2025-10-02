///// Step Event:

   if (device_mouse_check_button(0, mb_left)) {
        hold_timer += 1;
    } else {
        hold_timer = 0;
    }
	
	holding = device_mouse_check_button(0, mb_left) && hold_timer >= hold_threshold;



//if pressed 
if (device_mouse_check_button_pressed(0, mb_left)) {
	
    yspd = flap_strength;
    grav = 0.2; // reset gravity when you flap

}


// --- GRAVITY HANDLING ---

// gradually ramp up gravity if not holding button
if (!device_mouse_check_button(0, mb_left)) {
    if (grav < grav_max) {
        grav += grav_growth;
    }
}

// if holding button 
if (device_mouse_check_button(0, mb_left) && holding && state == BirdState.GLIDE) {
	
	if (yspd > glideVel) {
    yspd = glideVel;
	
	}
  
}

yspd += grav; // gravity always pulling down

if (yspd > termVel) {
    yspd = termVel;
}


y += yspd; 

bird_state_machine();
