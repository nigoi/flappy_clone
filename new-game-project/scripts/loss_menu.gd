extends Control
@onready var label = $Label

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")

func _on_exit_pressed() -> void:
	get_tree().quit()

func _ready() -> void:
	label.text = "HIGH SCORE! " + str(Global.high_score)
