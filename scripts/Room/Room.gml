function initialise_room() {
	
	room_set_width(room, global.display_width)
	room_set_height(room, global.display_height)
	
	// scroll the room background image
	layer_vspeed("Background", global.scroll_speed)
	
	// create spawners
	instance_create(0, 0, obj_vehicle_spawner)
	instance_create(0, 0, obj_foliage_spawner)
	
}