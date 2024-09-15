

draw_set_font(font_press_start_sm)

if current_game_state == GameState.Playing
{
	draw_set_color(c_white)
	draw_set_halign(fa_left);

	var distance_x = 40
	var distance_y = 80
	
	draw_sprite(spr_panel_score, 0, distance_x, distance_y)
	draw_set_font(font_press_start_md)
	draw_text(distance_x+70, distance_y+22, number_format_commas(round(current_distance)) + "M")
}

// show game over screen
if current_game_state == GameState.Finished
{
	// blue background
	draw_sprite_stretched_ext(spr_color_light_blue, 0, 0, 0, room_width, room_height, image_blend, 0.80)
	
	var center_x = room_width/2
	
	draw_sprite(spr_logo_medrecruit_blue, 0, center_x, 290)
	
	draw_set_halign(fa_center) // center text
	
	draw_set_font(font_press_start_lg)
	draw_set_color(#0F68EF)
	draw_text(center_x, 510, "GAME OVER")
	
	draw_set_font(font_press_start_md)
	draw_text(center_x, 670, "SCORE: " + number_format_commas(round(current_distance)) + "M")
	
	draw_set_color(#0A1B57)
	draw_text(center_x, 750, "HIGHSCORE: " + number_format_commas(round(global.highscore)) + "M")
	
	draw_set_font(font_press_start_sm)
	draw_set_color(#0F68EF)
	draw_text(center_x, room_height - 80, "PRESS ENTER TO PLAY AGAIN")
}