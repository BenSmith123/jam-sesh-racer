
function player_controls() {

	// move left
	if keyboard_check(ord("A")) || keyboard_check(vk_left)
	{
		x -= steering_speed
	}

	// move right
	if keyboard_check(ord("D")) || keyboard_check(vk_right)
	{
		x += steering_speed
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

	// brake
	if keyboard_check(ord("S")) || keyboard_check(vk_down)
	{
		y += global.scroll_speed
	}

}


function player_collisions() {

	// crashes into vehicle
	if place_meeting(x, y, obj_vehicle) {
		instance_destroy()
	}
	
}