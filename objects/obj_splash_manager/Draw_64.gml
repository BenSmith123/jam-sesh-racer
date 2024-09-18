
// Draw the background
draw_sprite_stretched(spr_color_light_blue, 0, 0, 0, room_width, room_height)

draw_set_font(font_press_start_sm)
draw_set_color(#0F68EF)

var center_x = room_width/2

draw_sprite(spr_logo_medrecruit_blue, 0, center_x, 340)

draw_set_halign(fa_center) // center text

draw_set_font(font_press_start_lg)
draw_text(center_x, 520, "MEDRACER")

draw_set_font(font_press_start_sm)
draw_text(center_x, 675, "Get your patient to the hospital as fast as you can!")

draw_set_font(font_press_start_sm)
draw_text(center_x, 712, "Use the arrow keys to navigate through traffic")

draw_set_font(font_press_start_md)
draw_text(center_x, room_height - 140, "HIGH SCORE: " + number_format_commas(global.highscore))

draw_set_font(font_press_start_sm)
draw_text(center_x, room_height - 80, "(PRESS ENTER TO PLAY)")