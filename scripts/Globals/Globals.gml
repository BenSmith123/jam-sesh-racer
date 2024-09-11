

enum GameState {
	Playing,
	Finished
}


function initialise_globals() {

	// SETUP
	
	global.display_width = 1920
	global.display_height = 1080
	
	
	// IN GAME
	
	global.scroll_speed = 4 // speed in which vehicles, scenery etc. travel
	global.game_state = GameState.Playing
	global.score = 0
	

}