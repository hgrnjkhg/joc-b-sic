extends CharacterBody2D
var direccio := Vector2.ZERO
func _ready() -> void:
	position = Vector2(500, 300)

var speed:= 120


func _process(delta: float) -> void:
	direccio = Input.get_vector("moure_amunt", "moure_avall", "moure_dreta", "moure_esquerra")
	
