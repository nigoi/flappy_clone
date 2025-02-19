extends RigidBody2D 
var speed = 600
var velocity = Vector2.ZERO
var pause_game = true

func center_sprite():
	var center = get_viewport().size / 2
	position = center

func _ready() -> void:
	center_sprite()

func movement(delta):
	if Input.is_action_pressed("space"):
		velocity.y = lerp(velocity.y, -1.0, 0.2)
		$AnimatedSprite2D.play()
		$AudioStreamPlayer2D.play()
	else:
		velocity.y = lerp(velocity.y, 1.0, 0.05)
	var collide = move_and_collide(velocity * speed * delta)
	if collide:
		var collider = collide.get_collider_id()
		print(collider)
	
func _physics_process(delta: float) -> void:
	movement(delta)
