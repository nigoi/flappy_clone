extends Control
var score = 0
@onready var label = get_node("VBoxContainer/Panel/Label")
@onready var label2 = get_node("VBoxContainer/Panel2/Label2")

func add_one_point():
	score += 1
	label.text = "SCORE = " + str(score)
	label2.text = "HIGHSCORE = " + str(Global.high_score)
	if score > Global.high_score:
		Global.high_score = score
		label2.text = "HIGHSCORE = " + str(Global.high_score)
	
func _on_count_hitbox_area_entered(area: Area2D) -> void:
	add_one_point()

func _ready() -> void:
	label.text = "SCORE = " + str(score)
	label2.text = "HIGHSCORE = " + str(Global.high_score)
	await get_tree().create_timer(3).timeout
	$Label.queue_free()
