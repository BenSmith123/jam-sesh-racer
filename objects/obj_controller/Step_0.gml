
if global.game_state = GameState.Playing
{
	global.score += 10
}
else
{
	// restart the game when pressing enter
	if keyboard_check(vk_enter)
	{
		game_restart()
	}
}