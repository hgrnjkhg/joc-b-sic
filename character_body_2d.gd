extends CharacterBody2D

var velocitat := 200

func _ready() -> void:
	position = Vector2(500, 300)


func _process(delta: float) -> void:
	var direccio = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direccio * velocitat
	move_and_slide()
