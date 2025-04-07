extends CharacterBody2D

var velocitat := 200
var gravity := Vector2.DOWN * 10000
var direccio := Vector2.ZERO
func _ready() -> void:
	position = Vector2(500, 300)


func _process(delta: float) -> void:
	direccio.x = Input.get_axis("ui_left", "ui_right")
	velocity.x = direccio.x * velocitat
	velocity += gravity * delta
	
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = -3000
		
	var desplaçament: Vector2 = direccio * velocitat
	position = position + desplaçament*delta
	move_and_slide()

func anima(desplaçament: Vector2, delta: float):
	#$Cotxe/Sprite2D.rotation += desplaçament.x / 20 * delta
	#$Cotxe/Sprite2D2.rotation += desplaçament.x / 20 * delta
	$Cotxe/Sprite2D2.rotation += 10 * delta
	$Cotxe/Sprite2D.rotation += 10 * delta
