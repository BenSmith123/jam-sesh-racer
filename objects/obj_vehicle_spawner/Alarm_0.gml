///@description - spawn vehicle

if obj_controller.current_game_state == GameState.Finished { exit }

var lane = irandom_range(1, 6)
var lane_x_offset = lane_gap * lane
var random_x_offset = irandom_range(-18, 18) // random offset so cars aren't always perfectly aligned

var vehicle = instance_create(x, spawn_y, obj_vehicle)
vehicle.vehicle_lane = lane
vehicle.x = lane_start_x + lane_x_offset + random_x_offset

// Rotate the vehicle if the vehicle is in the oncoming lane
var is_in_oncoming_lanes = lane > obj_controller.lane_count / 2;
if is_in_oncoming_lanes 
{ 
	vehicle.image_angle = 180
}

// speed up the spawn frequency
if spawn_frequency > spawn_frequency_min { spawn_frequency -= 2 }

alarm[0] = spawn_frequency // reset alarm to spawn another

