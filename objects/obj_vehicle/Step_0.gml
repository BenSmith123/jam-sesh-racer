
if global.game_state == GameState.Finished { exit }

// drive downwards
y += vehicle_speed

// delete when outside of room
if y > room_height+200 { instance_destroy() }