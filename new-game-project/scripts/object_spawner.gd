extends Node
var label = null
var start_spawning = false
var viewport_dimensions = Vector2.ZERO

var objects = [
	preload("res://scenes/collision_object.tscn"), 
	preload("res://scenes/collision_object.tscn"),
	preload("res://scenes/collision_object.tscn")
	]

func object_spawn_randomiser():
	var random_object = randi_range(0, objects.size() -1)
	var rand_instance = objects[random_object].instantiate()
	rand_instance.position = Vector2(viewport_dimensions.x + 10, randi_range(-100, 100))
	add_child(rand_instance)

func _ready() -> void:
	var label = get_tree().current_scene.get_node("CanvasLayer/Control/Panel/Label")
	viewport_dimensions = get_viewport().size

func _input(event: InputEvent) -> void:
	if event.is_pressed() and start_spawning == false:
		start_spawning = true
		spawn_wave(1000, 1.5)
		print(start_spawning)
		
func spawn_wave(times, interval):
	for i in range(times):
		object_spawn_randomiser()
		print("spawned")
		if interval > 0.1:
			interval = lerp(interval, 0.1, 0.01)
			print(interval)
		await get_tree().create_timer(interval).timeout
		
		
