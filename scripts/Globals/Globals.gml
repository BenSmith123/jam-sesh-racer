

enum GameState {
	Playing,
	Finished
}


function initialise_globals() 
{
	
	// DEBUG
	global.show_debug = false

	// SETUP
	
	global.display_width = 1920
	global.display_height = 1080
	
	
	// IN GAME
	
	global.scroll_speed = 4 // speed in which vehicles, scenery etc. travel
	global.game_state = GameState.Playing
	global.score = 0
	
	// min/max values for the x position of the road
	global.road_bountry_x_min = 448
	global.road_bountry_x_max = 1460

}