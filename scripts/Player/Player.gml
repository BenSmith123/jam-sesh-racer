
function player_controls() 
{

	image_angle = 0 // reset the angle if not pressing left or right
	mask_index = sprite_index // reset collision box when not pressing left or right

	// move left
	if keyboard_check(ord("A")) || keyboard_check(vk_left)
	{
		if x > obj_controller.road_boundry_x_min
		{
			image_angle = 10
			x -= steering_speed
			mask_index = spr_ambulance_turn_left // adjust collision box
		}

	}

	// move right
	if keyboard_check(ord("D")) || keyboard_check(vk_right)
	{
		if x < obj_controller.road_boundry_x_max
		{
			image_angle = -10
			x += steering_speed
			mask_index = spr_ambulance_turn_right // adjust collision box
		}
	}

	// drive forward
	if keyboard_check(ord("W")) || keyboard_check(vk_up)
	{
		y -= acceleration
		if (acceleration < acceleration_max) { acceleration += 0.5 }
	}
	else
	{
		acceleration = 0
	}

	// brake/reverse
	if keyboard_check(ord("S")) || keyboard_check(vk_down)
	{
		y += 8
	}

}


function player_collisions() {

	// crashes into vehicle
	if place_meeting(x, y, obj_vehicle) {
		instance_destroy()
	}
	
}