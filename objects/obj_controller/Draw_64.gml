

draw_set_font(font_press_start_sm)

if global.game_state == GameState.Playing
{
	// score
	var score_x = 120
	var score_y = 66
	draw_sprite(spr_scoreboard, 0, score_x, score_y)
	draw_set_font(font_press_start_md)
	draw_text(score_x, score_y, number_format_commas(global.score))
}

// show game over screen
if global.game_state == GameState.Finished
{
	// blue background
	draw_sprite_stretched_ext(spr_overlay_blue, 0, 0, 0, room_width, room_height, image_blend, 0.75)
	
	var center_x = room_width/2
	var center_y = room_height/2
	
	draw_sprite(spr_logo_medrecruit, 0, center_x, center_y-80)
	
	draw_set_halign(fa_center) // center text
	
	draw_set_font(font_press_start_lg)
	draw_text(center_x, center_y+48,"GAME OVER")
	
	draw_set_font(font_press_start_md)
	draw_text(center_x, center_y+388,"SCORE: " + number_format_commas(global.score))
	
	draw_set_font(font_press_start_sm)
	draw_text(center_x, center_y+468,"PRESS ENTER TO PLAY AGAIN")
}