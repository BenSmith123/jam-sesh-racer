// Set delta time for movements that are time based.
var _delta_time = delta_time * 0.000001;

// Change logic depending on the current game state.
switch (current_game_state)
{	
	case GameState.Playing:
		update_speed(_delta_time);	
	break;
	
	case GameState.Crashing:
		// Finish the game
		current_game_state = GameState.Finished;
		current_speed = 0;
		
		// Save the highscore
		if (current_distance > global.highscore)
		{
			global.highscore = current_distance;
		}
	break;

	case GameState.Finished:
		// Restart the game when pressing enter
		if keyboard_check(vk_enter)
		{
			game_restart()
		}
	break;
}