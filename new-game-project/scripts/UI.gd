extends Control
var score = 0
var label = null

func add_one_point():
	label = $Panel/Label
	score += 1
	label.text = str(score)
	
func _on_count_hitbox_area_entered(area: Area2D) -> void:
	add_one_point()
	
