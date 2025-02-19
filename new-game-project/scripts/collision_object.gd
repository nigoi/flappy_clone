extends Area2D
var speed = 600

func _on_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene()
	
func travel(delta):
	position.x -= 1 * speed * delta
	if position.x < 0:
		call_deferred("queue_free")
		
func _process(delta: float) -> void:
	travel(delta)
	
