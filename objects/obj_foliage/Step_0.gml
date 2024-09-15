

if obj_controller.current_game_state == GameState.Finished { exit }

// drive downwards
y += obj_controller.current_speed

// delete when outside of room
if y > room_height+200 { instance_destroy() }