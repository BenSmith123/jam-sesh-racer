initialise_globals()

game_set_speed(60, gamespeed_fps)

window_set_size(global.display_width, global.display_height)

randomize() // randomize gamemakers seed

room_set_width(room, global.display_width)

room_set_height(room, global.display_height)

// Variables for gameplay
current_level = 1;
current_level_distance = 0;
current_distance = 0;

// Variables for vehicle spawner
lane_count = 6;
road_boundry_x_min = 448
road_boundry_x_max = 1460

// Sets the game to playing by default
current_game_state = GameState.Playing;

/// Variables used to control the players speed
current_speed = 0.0;
min_speed = 0.0;
max_speed = 12.0;

// Used to increase the current level by n%
current_speed_level_multiplier = 1.05;

// Sets the new max speed as the current max speed (this variable is what adjusts the games speed curves)
new_max_speed = max_speed;

// The speed percentages are used to gradually increase and decrease the speed using smooth step interpolation 
current_speed_percentage = 0.0;
target_speed_percentage = 1.0;

// The rate speed will go up or down so the player will stop or slow down quicker than speeding up
speed_up_rate = 0.2;
speed_down_rate = 0.5;

// Function used to update the speed with delta time passed though as that is the time passed this frame meaning more accurate movement
update_speed = function(_delta_time)
{
	// Checks if a player has travelled the required distance since the last time they leveled up
	if (current_level_distance >= 100)
	{
		// Removes the distance from the current count
		current_level_distance -= 100;
		// Increases the level
		current_level++;
		// Sets the max speed to be faster for the new level
		new_max_speed = max_speed * current_speed_level_multiplier;
	}
	
	// Limits the current speed to the max speed
	if (current_speed > max_speed)
	{
		current_speed = max_speed;
	}
	
	// Checks if new max speed has changed, adjusts the percentage, and set the new max speed 
	if (current_speed != new_max_speed)
	{
		current_speed_percentage *= max_speed / new_max_speed;
		max_speed = new_max_speed;
	}
	
	// Check if speed is less than target.
	if (current_speed_percentage < target_speed_percentage)
	{
		// Speed up at rate.
		current_speed_percentage += speed_up_rate * _delta_time;
		
		// Limit speed to target.
		current_speed_percentage = min(current_speed_percentage, target_speed_percentage);
	
		// Interpolate speed using smoothstep curve.
		current_speed = smoothstep(min_speed, max_speed, current_speed_percentage);
	}
	// Check if speed is greater than target.
	else if (current_speed_percentage > target_speed_percentage)
	{
		// Slow down at rate.
		current_speed_percentage -= speed_down_rate * _delta_time;
		
		// Limit speed to target.
		current_speed_percentage = max(current_speed_percentage, target_speed_percentage);
	
		// Interpolate speed using smoothstep curve.
		current_speed = smoothstep(min_speed, max_speed, current_speed_percentage);
	}
	
	// Add current speed to distance traveled.
	current_distance += current_speed * _delta_time;
	current_level_distance += current_speed * _delta_time;

	if (global.show_debug)
	{
		print("current_speed:", current_speed, " max_speed:", max_speed, " new_max_speed:", new_max_speed)
	}
}