///@description - spawn vehicle

if global.game_state == GameState.Finished { exit }

var lane = irandom_range(1, 6)
var lane_x_offset = lane_gap * lane

var vehicle = instance_create(x, y, obj_vehicle)
vehicle.x = lane_start_x + lane_x_offset
vehicle.vehicle_speed = global.scroll_speed

// half the speed if the vehicle is in the left lane
var is_in_oncoming_lanes = vehicle.x > room_width / 2
if is_in_oncoming_lanes { vehicle.vehicle_speed =  global.scroll_speed * 2 }

// speed up the spawn frequency
if spawn_frequency > spawn_frequency_min { spawn_frequency -= 2 }

show_debug_message(spawn_frequency)

alarm[0] = spawn_frequency // reset alarm to spawn another
