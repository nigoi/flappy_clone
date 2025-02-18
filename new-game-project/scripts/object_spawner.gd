extends Node
var label = null

var objects = [
	preload("res://scenes/collision_object.tscn"), 
	preload("res://scenes/collision_object.tscn")
	]

func object_spawn_randomiser():
	var random_object = randi_range(0, objects.size() -1)
	var rand_instance = objects[random_object].instantiate()
	rand_instance.position = Vector2(get_viewport().size.x + 10, randi_range(0, get_viewport().size.y))
	add_child(rand_instance)

func _ready() -> void:
	var label = get_tree().current_scene.get_node("CanvasLayer/Control/Panel/Label")

func _on_timer_timeout() -> void:
	object_spawn_randomiser()
