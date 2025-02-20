extends Node

func find_roof_floor():
	var floor = get_node("floor")
	var roof = get_node("roof")
	var viewport = get_viewport().size
	roof.position.y = 10
	floor.position.y = viewport.y - 10

func _on_roof_body_entered(body: Node2D) -> void:
	call_deferred("end_scene")
 
func _on_floor_body_entered(body: Node2D) -> void:
	call_deferred("end_scene")
	
func end_scene():
	get_tree().change_scene_to_file("res://scenes/loss_menu.tscn")

func _ready() -> void:
	find_roof_floor()
