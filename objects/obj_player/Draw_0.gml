
draw_self()

// flash headlights when almost hitting a car
if place_meeting(x, y-20, obj_vehicle)
{
	draw_sprite(spr_headlights, 0, x, y)
}