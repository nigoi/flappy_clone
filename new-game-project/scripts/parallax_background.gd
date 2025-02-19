extends ParallaxBackground

@onready var speed = 200

func _process(delta: float) -> void:
	scroll_offset.x -= speed * delta
