///@description - spawn vehicle


var lane = irandom_range(1, 6)
var lane_x_offset = lane_gap * lane

var vehicle = instance_create(x, y, obj_vehicle)
vehicle.x = lane_start_x + lane_x_offset

alarm[0] = spawn_frequency // reset alarm to spawn another
