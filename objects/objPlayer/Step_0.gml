script_execute(state);

if(!place_meeting(x, y + 1, objCollider) && state != scrPlayerStateClimbingIdle) {
	velv += GRV+mass;
}