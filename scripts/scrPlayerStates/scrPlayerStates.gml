function scrPlayerStateIdle() {
	debugState = "Idle";
	
	velh = 0;
	
	mass = .05
	
	///////////////////////////////////////////////////
	
	#region Inputs/vars
	
	var colV = place_meeting(x, y + 1, objCollider);
	
	var jump = mouse_check_button_pressed(inputs.jump);
	
	#endregion Inputs/vars
	
	///////////////////////////////////////////////////
	
	#region Actions
	
	if(jump) {
		velv = -velJump1;
		velh = vel*image_xscale;
		state = scrPlayerStateJumping;
	}
	
	#endregion Actions
	
	///////////////////////////////////////////////////
	
	#region Check States
	
	if(velv != 0 && !colV) {
		if(velv > 0) {
			state = scrPlayerStateFalling;
		} else {
			state = scrPlayerStateJumping;
		}
	}
	
	if(place_meeting(x + sign(velh), y, objClimber)) {
		if(sign(velh) > 0) {
			image_xscale = -1;
		} else {
			image_xscale = 1;
		}
		alarm[0] = timeToFall;
		state = scrPlayerStateClimbingIdle;
	}
	
	#endregion Check States
}

function scrPlayerStateJumping() {
	debugState = "Jumping";
	
	mass = .05
	
	///////////////////////////////////////////////////
	
	#region Inputs/vars
	
	var colV = place_meeting(x, y + 1, objCollider);
	
	var jump = mouse_check_button_pressed(inputs.jump);
	
	#endregion Inputs/vars
	
	
	///////////////////////////////////////////////////
	
	#region Actions
	
	if(jump) {
		velv = -velJump1;
		velh = vel*image_xscale;
		state = scrPlayerStateJumping;
	}
	
	#endregion Actions
	
	///////////////////////////////////////////////////
	
	#region Check States
	
	if(velv != 0 && !colV) {
		if(velv > 0) {
			state = scrPlayerStateFalling;
		}
	}
	
	if(colV) {
		state = scrPlayerStateIdle;
	}
	
	if(place_meeting(x + sign(velh), y, objClimber)) {
		if(sign(velh) > 0) {
			image_xscale = -1;
		} else {
			image_xscale = 1;
		}
		alarm[0] = timeToFall;
		state = scrPlayerStateClimbingIdle;
	}
	
	#endregion Check States
}

function scrPlayerStateFalling() {
	debugState = "Falling";
	
	mass = .05
	
	///////////////////////////////////////////////////
	
	#region Inputs/vars
	
	var colV = place_meeting(x, y + 1, objCollider);
	
	var jump = mouse_check_button_pressed(inputs.jump);
	
	#endregion Inputs/vars
	
	
	///////////////////////////////////////////////////
	
	#region Actions
	
	if(jump) {
		velv = -velJump1;
		velh = vel*image_xscale;
		state = scrPlayerStateJumping;
	}
	
	#endregion Actions
	
	///////////////////////////////////////////////////
	
	#region Check States
	
	if(velv != 0 && !colV) {
		if(velv < 0) {
			state = scrPlayerStateJumping;
		}
	}
	
	if(colV) {
		state = scrPlayerStateIdle;
	}
	
	if(place_meeting(x + sign(velh), y, objClimber)) {
		if(sign(velh) > 0) {
			image_xscale = -1;
		} else {
			image_xscale = 1;
		}
		alarm[0] = timeToFall;
		state = scrPlayerStateClimbingIdle;
	}
		
	#endregion Check States
}

function scrPlayerStateClimbingIdle() {
	debugState = "ClimbingIdle";
	
	velv = 0;
	velh = 0;
	
	///////////////////////////////////////////////////
	
	#region Inputs/vars
	
	var colV = place_meeting(x, y + 1, objCollider);
	
	var jump = mouse_check_button_pressed(inputs.jump);
	
	#endregion Inputs/vars
	
	
	///////////////////////////////////////////////////
	
	#region Actions
	
	if(jump) {
		velv = -velJump1;
		velh = vel*image_xscale;
		state = scrPlayerStateJumping;
	}
	
	#endregion Actions
	
	///////////////////////////////////////////////////
	
	#region Check States
	
	if(colV) {
		state = scrPlayerStateIdle;
	}
	
	if(canFall) {
		canFall = false;
		state = scrPlayerStateClimbingFalling;
	}
		
	#endregion Check States
}

function scrPlayerStateClimbingFalling() {
	debugState = "ClimbingFalling";
	
	mass = .02
	
	///////////////////////////////////////////////////
	
	#region Inputs/vars
	
	var colV = place_meeting(x, y + 1, objCollider);
	
	var jump = mouse_check_button_pressed(inputs.jump);
	
	#endregion Inputs/vars
	
	
	///////////////////////////////////////////////////
	
	#region Actions
	
	if(jump) {
		velv = -velJump1;
		velh = vel*image_xscale;
		state = scrPlayerStateJumping;
	}
	
	#endregion Actions
	
	///////////////////////////////////////////////////
	
	#region Check States
	
	if(colV) {
		state = scrPlayerStateIdle;
	}
		
	#endregion Check States
}