extends Area2D
var speed = 600

func _on_body_entered(body: Node2D) -> void:
	$AudioStreamPlayer2D.play()
	call_deferred("end_scene")
	
func travel(delta):
	position.x -= 1 * speed * delta
	if position.x < -250:
		call_deferred("queue_free")
		
func _process(delta: float) -> void:
	travel(delta)
	
func end_scene():
	get_tree().change_scene_to_file("res://scenes/loss_menu.tscn")
