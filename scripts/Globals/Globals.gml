

enum GameState {
	Playing,
	Finished
}


function initialise_globals() {

	global.display_width = 1920
	global.display_height = 1080
	
	global.game_state = GameState.Playing

	global.score = 0

}