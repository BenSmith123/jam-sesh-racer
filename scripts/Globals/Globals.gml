
enum GameState {
	Playing,
	Crashing,
	Finished
}

function initialise_globals() 
{
	// DEBUG
	global.show_debug = false

	// SETUP
	global.display_width = 1920
	global.display_height = 1080
}