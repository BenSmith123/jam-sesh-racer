
steering_speed = 8

acceleration = 0
acceleration_max = 8

image_speed = 0.2

// Function used set the correct game state when a player crashes
crash_player = function()
{
	if (obj_controller.current_game_state == GameState.Playing)
	{
		obj_controller.current_game_state = GameState.Crashing;
	}
}