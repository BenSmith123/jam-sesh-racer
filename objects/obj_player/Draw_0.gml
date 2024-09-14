
draw_self()

// flash headlights when almost hitting a car
if place_meeting(x, y-20, obj_vehicle)
{
	draw_sprite_ext(spr_headlights, 0, x, y, 1, 1, image_angle, image_blend, 1)
}

// DEBUG
if global.show_debug
{
	draw_text(x,y-20, "x="+string(x))
}
