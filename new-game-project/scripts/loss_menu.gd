extends Control
@onready var label = $Label

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")

func _on_exit_pressed() -> void:
	get_tree().quit()

func _ready() -> void:
	if Global.high_score > Global.old_high_score:
		$AudioStreamPlayer2D.play()
		label.text = "HIGH SCORE! " + str(Global.high_score)
		Global.old_high_score = Global.high_score
	
