function game_start() {
	
	initialise_globals()

	game_set_speed(60, gamespeed_fps)
	
	window_set_size(global.display_width, global.display_height)

	randomize() // randomize gamemakers seed

}


function game_end_playing() {
	
	global.game_state = GameState.Finished
	global.scroll_speed = 0
	
	layer_vspeed("Background", global.scroll_speed)

}