///@description - spawn foliage

if global.game_state == GameState.Finished { exit }

var spawn_on_left = choose(true, false)

var xx = irandom_range(0, spawn_left_max_x)

if !spawn_on_left {
	xx = irandom_range(spawn_right_min_x, room_width)
}


var scenery = instance_create(x, y, obj_foliage)
scenery.x = xx

alarm[0] = spawn_frequency // reset alarm to spawn another
