
if obj_controller.current_game_state == GameState.Finished { exit }

vehicle_speed = obj_controller.current_speed - random_range(0.5, 1)

// Double the speed if the vehicle is in the oncoming lane
var is_in_oncoming_lanes = vehicle_lane > obj_controller.lane_count / 2;
if is_in_oncoming_lanes 
{ 
	vehicle_speed =  obj_controller.current_speed * random_range(1.25, 1.75)
}

// drive downwards
y += vehicle_speed

// delete when outside of room
if y > room_height+200 { instance_destroy() }