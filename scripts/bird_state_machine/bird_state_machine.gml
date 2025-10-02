function bird_state_machine(){

    switch(state){

        case BirdState.FALL:

            sprite_index = spr_bird_fall;
    
            if (device_mouse_check_button_pressed(0, mb_left) ) {
                    state = BirdState.FLAP;
            }
   
            
            break;
            
        case BirdState.FLAP:
        
            sprite_index = spr_bird_fly
            image_speed = 0.35;
			

			// don't let downward speed exceed glide threshold 
			// even before GLIDE kicks in
			if (yspd > termVel) {
			    yspd = termVel;
			}

			
			
			if(yspd < 0 && !device_mouse_check_button(0, mb_left) ) {  
                    state = BirdState.FLAP;
            }
            
                
            if(yspd > 5 && !device_mouse_check_button(0, mb_left) ) {  
                    state = BirdState.FALL;
            }
                
            
            if(animation_done()) {
            
                if (device_mouse_check_button(0, mb_left) && holding){
                    state = BirdState.GLIDE;
                    
                }
            
            }
        
              
            break;


        case BirdState.GLIDE:
    
                sprite_index = spr_bird_glide_right_1;
            
            if(yspd > 0 && !device_mouse_check_button(0, mb_left)) {  
                state = BirdState.FALL;
            }
            
            break;



    }





}