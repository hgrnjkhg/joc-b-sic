extends TouchScreenButton


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://nivell.tscn")


func _on_released() -> void:
	get_tree().change_scene_to_file("res://nivell.tscn")
